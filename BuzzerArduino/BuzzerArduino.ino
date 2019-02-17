int but1 = 13;
int but2 = 12;
int but3 = 11;
int but4 = 10;
int buttonState = 0;
int incomingByte = 6;
int reset = 7;

int led1 = 2;
int led2 = 3;
int led3 = 4;
int led4 = 5;

void setup() {
  // put your setup code here, to run once:
digitalWrite(reset, HIGH);
pinMode(but1, INPUT);
pinMode(but2, INPUT);
pinMode(but3, INPUT);
pinMode(but4, INPUT);
pinMode(led1, OUTPUT);
pinMode(led2, OUTPUT);
pinMode(led3, OUTPUT);
pinMode(led4, OUTPUT);
pinMode(reset, OUTPUT);

Serial.begin(9600);


}

void loop() {
  // put your main code here, to run repeatedly:
  
      do{
      if (Serial.available() > 0) {
    // read the incoming byte:
    incomingByte = Serial.read();
    }
    
   }while(incomingByte == 6);
   
  if (digitalRead(but1) == LOW)
  { 
    //Serial.println("Player 1");
    Serial.write(1);
    digitalWrite(led1, HIGH);
    delay(5000);
    Serial.write(5);
    digitalWrite(led1, LOW);
    incomingByte = 6;
  }else if (digitalRead(but2) == LOW){ 
    //Serial.println("Player 2");
    Serial.write(2);
    digitalWrite(led2, HIGH);
    delay(5000);
    Serial.write(5);
    digitalWrite(led2, LOW);
    incomingByte = 6;
  }else if (digitalRead(but3) == LOW){ 
    //Serial.println("Player 3");
    Serial.write(3);
    digitalWrite(led3, HIGH);
    delay(5000);
    Serial.write(5);
    digitalWrite(led3, LOW);
    incomingByte = 6;
  }else if (digitalRead(but4) == LOW)
  { 
    //Serial.println("Player 4");
    Serial.write(4);
    digitalWrite(led4, HIGH);
    delay(5000);
    Serial.write(5);
    digitalWrite(led4, LOW);
    incomingByte = 6;
  }else
  {
    //Serial.println("End");
  }



}


