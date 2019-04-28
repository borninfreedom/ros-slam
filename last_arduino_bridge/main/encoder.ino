#define LEFT_ENC_A  18    //INT5
#define LEFT_ENC_B  19    //INT4
#define RIGHT_ENC_A   2   //INT0
#define RIGHT_ENC_B   3   //INT1

void initEncoders(){
  pinMode(LEFT_ENC_A,INPUT);
  pinMode(LEFT_ENC_B,INPUT);
  pinMode(RIGHT_ENC_A,INPUT);
  pinMode(RIGHT_ENC_B,INPUT);
  attachInterrupt(5,leftEncoderEvent,CHANGE);
  attachInterrupt(0,rightEncoderEvent,CHANGE);
}

void leftEncoderEvent(){
  if (digitalRead(LEFT_ENC_A) == LOW) {
      if (digitalRead(LEFT_ENC_B) == HIGH) {
        left_enc_pos--;
      }
      else {
        left_enc_pos++;
      }
    }
    else {
      if (digitalRead(LEFT_ENC_B) == HIGH) {
        left_enc_pos++;
      }
      else {
        left_enc_pos--;
      }
    }
}

void rightEncoderEvent() {
    if (digitalRead(RIGHT_ENC_A) == HIGH) {
      if (digitalRead(RIGHT_ENC_B) == LOW) {
        right_enc_pos--;
      }
      else {
        right_enc_pos++;
      }
    }
    else {
      if (digitalRead(RIGHT_ENC_B) == LOW) {
        right_enc_pos++;
      }
      else {
        right_enc_pos--;
      }
    }
}

long readEncoder(int i){
  if(i == LEFT) return 0-left_enc_pos;
  else return right_enc_pos;
}

void resetEncoder(int i){
  if(i == LEFT){
    left_enc_pos = 0L;
    return;
  }else{
    right_enc_pos = 0L;
    return;
  }
}

void resetEncoders(){
  resetEncoder(LEFT);
  resetEncoder(RIGHT);
}
