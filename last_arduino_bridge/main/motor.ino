boolean direction(int i){
  if (i == LEFT)  return directionLeft;
  else    return directionRight;
}

void initMotorController(){
  pinMode(PWMA,OUTPUT);
  pinMode(PWMB,OUTPUT);
  pinMode(AIN1,OUTPUT);
  pinMode(AIN2,OUTPUT);
  pinMode(BIN1,OUTPUT);
  pinMode(BIN2,OUTPUT);
  pinMode(STBY,OUTPUT);
}

//A标号为左侧电机
void setMotorSpeed(int i, int spd){
  if (spd > MAX_PWM)  spd = MAX_PWM;
  if (spd < -MAX_PWM)   spd = -1 * MAX_PWM;
  if (i == LEFT){
    if (spd >= 0){
      directionLeft =  FORWARDS;
      digitalWrite(STBY,HIGH);
      digitalWrite(AIN1,HIGH);
      digitalWrite(AIN2,LOW);
      analogWrite(PWMA,spd);
    }
    else if (spd < 0){
      directionLeft = BACKWARDS;
      digitalWrite(STBY,HIGH);
      digitalWrite(AIN1,LOW);
      digitalWrite(AIN2,HIGH);
      analogWrite(PWMA,-spd);
    }
  }
  else{
    if(spd >= 0){
      directionRight = FORWARDS;
      digitalWrite(STBY,HIGH);
      digitalWrite(BIN1,HIGH);
      digitalWrite(BIN2,LOW);
      analogWrite(PWMB,spd);
    }
    else if (spd < 0){
      directionRight = BACKWARDS;
      digitalWrite(STBY,HIGH);
      digitalWrite(BIN1,LOW);
      digitalWrite(BIN2,HIGH);
      analogWrite(PWMB,-spd);
    }
  }
}
void setMotorSpeeds(int leftSpeed, int rightSpeed){
  setMotorSpeed(LEFT,leftSpeed);
  setMotorSpeed(RIGHT,rightSpeed);  
}
