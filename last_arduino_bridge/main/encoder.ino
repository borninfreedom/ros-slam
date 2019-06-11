//encoder部分硬件：AB双相霍尔编码器
//这个编码器的精度有限，建议如果以后做，用欧姆龙或其他品牌的工业编码器

void initEncoders(){
  pinMode(AENCODER_1,INPUT_PULLUP);
  pinMode(AENCODER_2,INPUT_PULLUP);
  pinMode(BENCODER_1,INPUT_PULLUP);
  pinMode(BENCODER_2,INPUT_PULLUP);
  attachInterrupt(1,leftEncoderEvent,CHANGE);     //arduino的中断表一定要了解，在必应上搜 attchinterrupt就可以到中断表的说明的网站，细心不要弄错中断和对应的引脚
  attachInterrupt(4,rightEncoderEvent,CHANGE);   //中断这个地方有个隐藏技巧，因为编码器的正负极的方向是一样的，但是装到轮子上后就是方向相反的了，所以如果编码器1进入正极引脚对应的中断
}						//那么编码器2就进入负极对应的中断，这样做当机器人向某个方向走的时候，才能两个编码器同时进入中断。
						//如果都让两个编码器的正极对应的线进入中断，那么前几个数值可能会有正负值跳变，可以试一下
void leftEncoderEvent(){
  if (digitalRead(AENCODER_1) == HIGH) {         //编码器的计数原理在我的论文中有写,这段代码就是实现的介绍的原理
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
