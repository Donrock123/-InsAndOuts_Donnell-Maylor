//Donnell Maylor
//Final_WIP

import processing.serial.*; 

Serial myPort; 
int portVal = 0; 
int sensor1val = 0;
int sensor2val = 0;
int sensor3val = 0;
int threshold = 90;

float r;
float g;
float b;

void setup() {
  size(400, 400);
  
  printArray(Serial.list()); 
  String portName = Serial.list()[0]; 
  myPort = new Serial(this, portName, 9600);
}



void draw() {
 if ( myPort.available() > 0) { 
    portVal = myPort.read(); 
 }
 if (portVal > 0 && portVal <= 85){
    sensor1val = portVal;
 }
 
 if (portVal > 100 && portVal <= 255){
    sensor2val = portVal;
 }
 
 if (portVal > 86 && portVal <= 99){
    sensor3val = portVal; 
 }
 if (sensor3val == 91) {
   r = random(255);
   g = random(255);
   b = random(255);
 } 
 
 sensor2val = int( map(sensor2val, 100, 255, 100, 255));
 
  background(255);
  fill (255);
  ellipse (width/2, height/2, sensor2val, sensor2val);
  fill(sensor1val);
  ellipse(150, 150, 40, 40);
  ellipse(250, 150, 40, 40);
  rect(150, 250, 100, 20);
  fill(r, g, b);
  triangle(170, 220, 200, 180, 230, 220);
  
  
  println (portVal);
  println("sensor1val: " + sensor1val);
  println("sensor2val: " + sensor2val);
  println("sensor3val: " + sensor3val);
}
