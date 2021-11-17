import processing.serial.*; 

Serial portOne; 
int val=0; 
float r= 255;
float g= 255;
float b= 255;

void setup() {
  size(400, 400);

  printArray(Serial.list()); 
  String USB = Serial.list()[0]; 
  portOne = new Serial(this, USB, 9600);
}

void draw() {
  if ( portOne.available() > 0) { 
    val = portOne.read(); 
  }

  
  background(255);
  fill (255, 0, 0);
  ellipse (width/2, height/2, val, val);
  println (val); 
  if (val > 155) { fill(0,255,0);
  ellipse (width/2, height/2, val, val);
  }
  else if 
  (val <100) {ellipse(100, 100, 40, 40);
  }
  
  {
  if
  (val <150)rect(280, 80, 40, 40);
  }  
  
  {
  if
  (val <200) {triangle(150, 350, 250, 350, 200, 300);
}
}
}
