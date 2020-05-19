//pid部分基本上时现成的算法，不过还是要多读几遍这个代码，对于了解pid的工作原理和后面pid的调试都很有好处，知道了原理自然调节起来游刃有余
//在源码diff_controller.h部分
void resetPID()
{
  leftPID.TargetTicksPerFrame = 0.0;
  leftPID.Encoder = readEncoder(LEFT);
  leftPID.PrevEnc = leftPID.Encoder;
  leftPID.output = 0;
  leftPID.PrevInput = 0;
  leftPID.ITerm = 0;

  rightPID.TargetTicksPerFrame = 0.0;
  rightPID.Encoder = readEncoder(RIGHT);
  rightPID.PrevEnc = rightPID.Encoder;
  rightPID.output = 0;
  rightPID.PrevInput = 0;
  rightPID.ITerm = 0;
}

//在源码diff_controller.h部分，源码为单独pid参数
void dorightPID(SetPointInfo *p)
{
  long Perror = 0;
  long output = 0;
  int input = 0;
  
  p->Encoder = readEncoder(RIGHT);
  input  = p->Encoder - p->PrevEnc;
  Perror = p->TargetTicksPerFrame - input;
  p->PrevInput = input;

  output = (right_Kp * Perror - right_Kd * (input - p->PrevInput) + p->ITerm) / right_Ko;       //这就是pid计算输出值的函数式子，从这可以清楚的看到三大k参数的作用，起抑制还是促进作用
  p->PrevEnc = p->Encoder;	//对于新的电机，一般特性差不多，pid参数设置为相同的一般电机转起来也是差不多的
  //因为刚买的电机，我看了一下，pid参数相同的情况下，走起来直线效果很好
  output += p->output;		//不过，这有个前提条件，万向轮在后面，如果万向轮在前面，时走不好直线的，我尝试调了很长时间pid，万向轮在前
  //就是走不好，可以尝试一下，万向轮在前调好了叫我一声
  if (output >= MAX_PWM)
    output = MAX_PWM;
  else if (output <= -MAX_PWM)
    output = -MAX_PWM;
  else
    p->ITerm += Ki * Perror;

  p->output = output;
}

//在源码diff_controller.h部分，源码为单独pid参数
void doleftPID(SetPointInfo *p)
{
  long Perror = 0;
  long output = 0;
  int input = 0;
  
  p->Encoder = readEncoder(LEFT);
  input = p->Encoder - p->PrevEnc;
  Perror = p->TargetTicksPerFrame - input;
  p->PrevInput = input;
  
  output = (left_Kp * Perror - left_Kd * (input - p->PrevInput) + p->ITerm) / left_Ko;
  p->PrevEnc = p->Encoder;

  output += p->output;
  if (output >= MAX_PWM)
    output = MAX_PWM;
  else if (output <= -MAX_PWM)
    output = -MAX_PWM;
  else
    p->ITerm += Ki * Perror;

  p->output = output;
}


//读取编码器的数值并且执行pid计算
void updatePID()
{
  leftPID.Encoder  = readEncoder(LEFT);
  rightPID.Encoder = readEncoder(RIGHT);

  if (!moving)
  {
    if (leftPID.PrevInput != 0 || rightPID.PrevInput != 0)
      resetPID();
      
    return;
  }
  doleftPID(&leftPID);
  dorightPID(&rightPID);
  setMotorSpeeds(leftPID.output, rightPID.output);
}

//源代码没有，新加入方便调试的
//这一部分的代码的调用在communication.ino里面，为了调试使用的，上位机还有部分代码处理这部分数据，将这些数据通过rostopic发布出去
long readPidIn(int i) {
  long pidin = 0;
  if (i == LEFT)  pidin = leftPID.PrevInput;
  else  pidin = rightPID.PrevInput;
  return pidin;
}

long readPidOut(int i) {
  long pidout = 0;
  if (i == LEFT)   pidout = leftPID.output;
  else    pidout = rightPID.output;
  return pidout;
}
