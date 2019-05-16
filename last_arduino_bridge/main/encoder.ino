void initEncoders(){
  pinMode(AENCODER_1,INPUT_PULLUP);
  pinMode(AENCODER_2,INPUT_PULLUP);
  pinMode(BENCODER_1,INPUT_PULLUP);
  pinMode(BENCODER_2,INPUT_PULLUP);
  attachInterrupt(1,leftEncoderEvent,CHANGE);
  attachInterrupt(4,rightEncoderEvent,CHANGE);
}

void leftEncoderEvent(){
  if (digitalRead(AENCODER_1) == HIGH) {
      if (digitalRead(AENCODER_2) == LOW) {
        left_enc_pos--;
      }
      else {
        left_enc_pos++;
      }
    }
    else {
      if (digitalRead(AENCODER_2) == LOW) {
        left_enc_pos++;
      }
      else {
        left_enc_pos--;
      }
    }
}

void rightEncoderEvent() {
    if (digitalRead(BENCODER_1) == HIGH) {
      if (digitalRead(BENCODER_2) == LOW) {
        right_enc_pos--;
      }
      else {
        right_enc_pos++;
      }
    }
    else {
      if (digitalRead(BENCODER_2) == LOW) {
        right_enc_pos++;
      }
      else {
        right_enc_pos--;
      }
    }
}

long readEncoder(int i){
  if(i == LEFT) return left_enc_pos;
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
