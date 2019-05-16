void resetPID(){
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

void dorightPID(SetPointInfo * p) {
  long Perror;
  long output;
  int input;

  input = p->Encoder - p->PrevEnc;
  Perror = p->TargetTicksPerFrame - input;

  output = (right_Kp * Perror - right_Kd * (input - p->PrevInput) + p->ITerm) / right_Ko;
  p->PrevEnc = p->Encoder;

  output += p->output;
 
  if (output >= MAX_PWM)
    output = MAX_PWM;
  else if (output <= -MAX_PWM)
    output = -MAX_PWM;
  else
    p->ITerm += Ki * Perror;

  p->output = output;
  p->PrevInput = input;
}

void doleftPID(SetPointInfo * p) {
  long Perror;
  long output;
  int input;

  input = p->Encoder - p->PrevEnc;
  Perror =p->TargetTicksPerFrame - input;
  
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
  p->PrevInput = input;
}


//读取编码器的数值并且执行pid计算
void updatePID(){
  leftPID.Encoder = readEncoder(LEFT);
  rightPID.Encoder = readEncoder(RIGHT);
  if(!moving){
    if(leftPID.PrevInput != 0 || rightPID.PrevInput != 0) resetPID();
    return;
  }
  doleftPID(&leftPID);
  dorightPID(&rightPID);
  setMotorSpeeds(leftPID.output, rightPID.output);
}

long readPidIn(int i){
  long pidin = 0;
  if (i == LEFT)  pidin = leftPID.PrevInput;
  else  pidin = rightPID.PrevInput;
  return pidin;
}

long readPidOut(int i){
  long pidout = 0;
  if(i == LEFT)   pidout = leftPID.output;
  else    pidout = rightPID.output;
  return pidout;
}
