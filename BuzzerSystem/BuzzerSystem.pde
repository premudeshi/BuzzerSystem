
import processing.serial.*;
import controlP5.*;
import processing.sound.*;
SoundFile file;

ControlP5 cp5;
PFont font;
PFont font2;

Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port

void setup(){
  size(500, 650);
    String portName = Serial.list()[4];
  myPort = new Serial(this, portName, 9600);
  cp5 = new ControlP5(this);
  font = createFont("above.ttf", 20);
  font2 = createFont("title.ttf", 32);
  cp5.addButton("Start")
  .setPosition(250,50)
  .setSize(100, 80)
  .setFont(font)
  ;
file = new SoundFile(this, "buzz.mp3");
}

void draw(){
  
 background(135 , 206, 250); 
 fill(0,100,0);
 textFont(font2);
 text("Buzzer Software", 150, 30);
   if ( myPort.available() > 0) {  // If data is available,
    val = myPort.read();         // read it and store it in val
  }
 if (val == 1) {              // If the serial value is 0,
    fill(255, 0 , 0);
    file.play();// set fill to black
  } 
  else {                       // If the serial value is not 0,
    fill(0);                 // set fill to light gray
  }
  rect(100, 50, 100, 100);
   
  if (val == 2) {              // If the serial value is 0,
    fill(0, 255, 0);                   // set fill to black
    file.play();
  } 
  else {                       // If the serial value is not 0,
    fill(0);                 // set fill to light gray
  }
  rect(100, 200, 100, 100);
     
  
  if (val == 3) {              // If the serial value is 0,
    fill(0, 0, 255);                   // set fill to black
    file.play();
  } 
  else {                       // If the serial value is not 0,
    fill(0);                 // set fill to light gray
  }
  rect(100, 350, 100, 100);
  
    if (val == 4) {              // If the serial value is 0,
    fill(0, 255, 255);                   // set fill to black
    file.play();
  } 
  else {                       // If the serial value is not 0,
    fill(0);                 // set fill to light gray
  }
  rect(100, 500, 100, 100);
  delay(500);
  file.stop();

}

void Start(){
 myPort.write(7); 
}
