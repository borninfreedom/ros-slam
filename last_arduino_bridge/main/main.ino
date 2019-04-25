#define MAX_PWM   255
#define LEFT            0
#define RIGHT           1
#define BAUDRATE  57600
#define FORWARDS  true
#define BACKWARDS false
#define  ENA   12
#define  AIN1  37
#define  AIN2  38
#define  ENB   11
#define  BIN1  34
#define  BIN2  33
#define  STBY  13
#define PID_RATE  30    //HZ
#define AUTO_STOP_INTERVAL  2000

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
typedef struct{
  double TargetTicksPerFrame;  //在每帧的目标速度
  long Encoder;     //编码器数量
  long PrevEnc;
//参数的具体意义见 http://brettbeauregard.com/blog/2011/04/improving-the-beginner%E2%80%99s-pid-derivative-kick/
// http://brettbeauregard.com/blog/2011/04/improving-the-beginner%E2%80%99s-pid-tuning-changes/ 
  int PrevInput;
  int ITerm;    //intergrated term
  long output;   //last motor setting
  
}
SetPointInfo;
SetPointInfo leftPID, rightPID;

void setup() {
   Serial.begin(BAUDRATE);
   initEncoders();
   initMotorController();  
   resetPID();
  // setMotorSpeeds(100,70);
}

void loop() {
 // Serial.print(readEncoder(LEFT));
 // Serial.print("  ");
 // Serial.println(readEncoder(RIGHT));
 // delay(30);
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
