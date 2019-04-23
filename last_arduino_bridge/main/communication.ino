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
  int pid_args[4];
  arg1 = atoi(argv1);
  arg2 = atoi(argv2);

  switch(cmd){
    case GET_BAUDRATE:
      Serial.println(BAUDRATE);
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
//      Serial.println(Ping(arg1));
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
        Kp = pid_args[0];
        Kd = pid_args[1];
        Ki = pid_args[2];
        Ko = pid_args[3];
        Serial.println("UPDATE_PID OK");
        break;
      default:
        Serial.println("Invalid CMD");
        break;
  }
}
