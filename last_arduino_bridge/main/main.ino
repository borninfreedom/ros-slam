#define MAX_PWM   255
#define LEFT            0
#define RIGHT           1
#define BAUDRATE  57600
#define FORWARDS  true
#define BACKWARDS false

//电机定义，ENCODER_1代表编码器正极,A标号为左侧电机
#define  PWMA  12
#define  AIN1  37
#define  AIN2  38
#define  AENCODER_1     3     //INT1--中断号
#define  AENCODER_2     2     //INT0
#define  PWMB   11
#define  BIN1  34
#define  BIN2  33
#define  BENCODER_1     18    //INT5
#define  BENCODER_2     19    //INT4
#define  STBY  13

#define PID_RATE  30    //HZ
#define AUTO_STOP_INTERVAL  2000   //这个参数控制一条指令执行多长的时间，现在是2秒，就是比如发一个rostopic pub cmd_vel的信息，小车会执行指令2秒，可以根据自己需要调整

boolean directionLeft = false;
boolean directionRight = false;
unsigned char moving = 0;
int Kp = 20;
int Kd = 12;
int Ki = 0;
int Ko = 50;
int left_Kp = Kp;
int left_Kd = Kd;
int left_Ki = Ki;
int left_Ko = Ko;
int right_Kp = Kp;
int right_Kd = Kd;
int right_Ki = Ki;
int right_Ko = Ko;
const int PID_INTERVAL = 1000 / PID_RATE;   //pid jian ge 
unsigned long nextPID = PID_INTERVAL;
long lastMotorCommand = AUTO_STOP_INTERVAL;
int arg = 0;
int index = 0;
char chr;
char cmd;
char argv1[32];
char argv2[32];
long arg1;
long arg2;
volatile long left_enc_pos = 0L;
volatile long right_enc_pos = 0L;
//这部分代码时进行pid计算必须的参数
typedef struct{
  double TargetTicksPerFrame;  //在每帧的目标速度
  long Encoder;     //编码器脉冲数量
  long PrevEnc;
//参数的具体意义见 http://brettbeauregard.com/blog/2011/04/improving-the-beginner%E2%80%99s-pid-derivative-kick/
// http://brettbeauregard.com/blog/2011/04/improving-the-beginner%E2%80%99s-pid-tuning-changes/ 
  int PrevInput;
  int ITerm;    //intergrated term
  long output;   //last motor setting
  
}
SetPointInfo;
SetPointInfo leftPID, rightPID;


//可能会觉着main里面有些乱，有pid需要的参数，有其他的声明的参数等。我用arduino ide的时候很奇怪，添加.h  .cpp很大几率会编译出错，所以我就都用.ino的方式，这种方式类似于写了一个.ino，只是拆开更好看而已
//编译器工作的时候还是会把所有的代码搞到一个.ino里面去，所以在encoder.ino里面声明一个变量和在main.ino里面声明一个变量时一样的，把所有变量都声明在main里面感觉好处理一些，不用参数各处都有，修改麻烦
void setup() {
   Serial.begin(BAUDRATE);
   initEncoders();
   initMotorController();  
   resetPID();
  // setMotorSpeeds(80,80); 
}

void loop() {                     //loop里面为上下位机通讯的程序，下位机必须时时循环以等待接受上位机的指令，所以必须一直在循环，不要更改结构,也不建议修改loop里面的代码
  while(Serial.available() > 0){ 
    chr = Serial.read();
    if(chr == 13){
      if(arg == 1)  argv1[index] = NULL;
      else if(arg == 2)   argv2[index] = NULL;
      runCommand();
      resetCommand();
    }
    else if (chr == ' '){
      if (arg == 0) arg = 1;
      else if (arg == 1){
        argv1[index] = NULL;
        arg = 2;
        index = 0;
      }
      continue;
    }
    else{
      if(arg == 0)  cmd = chr;
      else if (arg == 1){
        argv1[index] = chr;
        index++;
      }
      else if(arg == 2){
        argv2[index] = chr;
        index++;
      }
    }
  }
  
  if(millis() > nextPID){
    updatePID();
    nextPID += PID_INTERVAL;
  }

  if ((millis() - lastMotorCommand) > AUTO_STOP_INTERVAL){
    setMotorSpeeds(0,0);
    moving = 0;
  }
}
