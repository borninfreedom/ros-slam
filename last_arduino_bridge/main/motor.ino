boolean direction(int i){
  if (i == LEFT)  return directionLeft;
  else    return directionRight;
}
void initMotorController(){
  pinMode(ENA,OUTPUT);
  pinMode(ENB,OUTPUT);
  pinMode(AIN1,OUTPUT);
  pinMode(AIN2,OUTPUT);
  pinMode(BIN1,OUTPUT);
  pinMode(BIN2,OUTPUT);
  pinMode(STBY,OUTPUT);
}
void setMotorSpeed(int i, int spd){
  if (spd > MAX_PWM)  spd = MAX_PWM;
  if (spd < -MAX_PWM)   spd = -1 * MAX_PWM;
  if (i == LEFT){
    if (spd >= 0){
      directionLeft =  FORWARDS;
      digitalWrite(STBY,HIGH);
      digitalWrite(BIN1,HIGH);
      digitalWrite(BIN2,LOW);
      analogWrite(ENB,spd);
    }
    else if (spd < 0){
      directionLeft = BACKWARDS;
      digitalWrite(STBY,HIGH);
      digitalWrite(BIN1,LOW);
      digitalWrite(BIN2,HIGH);
      analogWrite(ENB,-spd);
    }
  }
  else{
    if(spd >= 0){
      directionRight = FORWARDS;
      digitalWrite(STBY,HIGH);
      digitalWrite(AIN1,HIGH);
      digitalWrite(AIN2,LOW);
      analogWrite(ENA,spd);
    }
    else if (spd < 0){
      directionRight = BACKWARDS;
      digitalWrite(STBY,HIGH);
      digitalWrite(AIN1,LOW);
      digitalWrite(AIN2,HIGH);
      analogWrite(ENA,-spd);
    }
  }
}
void setMotorSpeeds(int leftSpeed, int rightSpeed){
  setMotorSpeed(LEFT,leftSpeed);
  setMotorSpeed(RIGHT,rightSpeed);  
}
