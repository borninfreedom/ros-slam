//除了注释部分的代码可以根据需要更改，其他部分的代码一般不更改框架，只是做微调，因为这是在ros_arduino_bridge的通信协议下进行的自定义
//这一部分根据自己需要写指令，但是要注意，如果在这里添加了指令，同时想要指令发挥作用，必须在上位机的ros_arduino_python文件夹下的文件进行更改才可以，后面我还会再说
#define ANALOG_READ    'a'
#define GET_BAUDRATE   'b'
#define PIN_MODE       'c'
#define DIGITAL_READ   'd'
#define READ_ENCODERS  'e'
#define MOTOR_SPEEDS   'm'
#define PING           'p'
#define RESET_ENCODERS 'r'
#define SERVO_WRITE    's'
#define SERVO_READ     't'
#define UPDATE_PID     'u'
#define DIGITAL_WRITE  'w'
#define ANALOG_WRITE   'x'
#define READ_PIDOUT    'f'
#define READ_PIDIN     'i'

void resetCommand(){
  cmd = NULL;
  memset(argv1,0,sizeof(argv1));
  memset(argv2,0,sizeof(argv2));
  arg1 = 0;
  arg2 = 0;
  arg = 0;
  index = 0;
}


int runCommand(){
  int i = 0;
  char *p = argv1;
  char *str;
  int pid_args[8];   //因为是两个轮子pid独立调速，所以有8个参数，kp kd ki ko(ko在pid的源代码中作为除数，越小pid值越大，设为默认值即可，一般情况下不调节此值)
  arg1 = atoi(argv1);
  arg2 = atoi(argv2);

  switch(cmd){
    case GET_BAUDRATE:
      Serial.println(BAUDRATE);
      break;
    case READ_PIDIN:
      Serial.print(readPidIn(LEFT));
      Serial.print(" ");
      Serial.println(readPidIn(RIGHT));
      break;
    case READ_PIDOUT:            //这个是自己添加的case，还有其他几个也是，留意上位机的Python代码时怎么写的
      Serial.print(readPidOut(LEFT));
      Serial.print(" ");
      Serial.println(readPidOut(RIGHT));
      break;
    case ANALOG_READ:
      Serial.println(analogRead(arg1));
      break;
    case DIGITAL_READ:
      Serial.println(digitalRead(arg1));
      break;
    case ANALOG_WRITE:
      analogWrite(arg1, arg2);
      Serial.println("OK");
      break;
    case DIGITAL_WRITE:
      if(arg2 == 0)   digitalWrite(arg1,LOW);
      else if(arg2 == 1)  digitalWrite(arg1,HIGH);
      Serial.println("OK");
      break;
    case PIN_MODE:
      if(arg2 == 0) pinMode(arg1,INPUT);
      else if(arg2 == 1)  pinMode(arg1,OUTPUT);
      Serial.println("OK");
      break;
    case PING:
//      Serial.println(Ping(arg1));    //ping要注释掉，我们没有他的函数原型
      break;
    case READ_ENCODERS:
      Serial.print(readEncoder(LEFT));
      Serial.print(" ");
      Serial.println(readEncoder(RIGHT));
      break;
    case RESET_ENCODERS:
      resetEncoders();
      resetPID();
      Serial.println("OK");
      break;
    case MOTOR_SPEEDS:
      lastMotorCommand = millis();
      if(arg1 == 0 && arg2 == 0){
        setMotorSpeeds(0,0);
        resetPID();
        moving = 0;
      }
      else moving = 1;
      leftPID.TargetTicksPerFrame = arg1;
      rightPID.TargetTicksPerFrame = arg2;
      Serial.println("OK");
      break;
     case UPDATE_PID:
        while((str = strtok_r(p,":", &p)) != '\0'){
          pid_args[i] = atoi(str);
          i++;
        }
        left_Kp = pid_args[0];
        left_Kd = pid_args[1];
        left_Ki = pid_args[2];
        left_Ko = pid_args[3];

        right_Kp = pid_args[4];
        right_Kd = pid_args[5];
        right_Ki = pid_args[6];
        right_Ko = pid_args[7];
    //    Kp = pid_args[0];
    //    Kd = pid_args[1];
    //    Ki = pid_args[2];
    //    Ko = pid_args[3];
        Serial.println("UPDATE_PID OK");
        break;
      default:
        Serial.println("Invalid CMD");
        break;
  }
}
