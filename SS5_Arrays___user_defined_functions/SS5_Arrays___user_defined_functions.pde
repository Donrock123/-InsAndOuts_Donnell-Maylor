//Donnell Maylor
//SS5_Arrays_&_user-defined_functions
//click to change color of the background
//move the mouse left or right to reveal the ellipses

int x = 0;
int speed = 10;
int [] shad = new int [5];

int positionShad = 0;

float r= 255;
float g= 255;
float b= 255;
float r1= 255;
float g1= 255;
float b1= 255;
float r2= 255;
float g2= 255;
float b2= 255;

void setup(){
size(1000,1000);

 shad[0] = 000;
 shad[1] = 100;
 shad[2] = 200;
 shad[3] = 300;
 shad[4] = 400;
}

void drawBlackCircle() {
fill(r1, g1, b1);
ellipse(300, 500, 200, 200);
}

void drawWhiteCircle() {
fill(r2, g2, b2);
ellipse(700, 500, 200, 200);
}

void draw() {
background(r, g, b);

if (mouseX>width/2) {
    fill(r1, g1, b1);
    drawBlackCircle();
  
}
else if (mouseY> height/2) { 
    fill(r2, g2, b2);
    drawWhiteCircle();
    
  }

}

void mousePressed(){
println(shad[positionShad]);
  positionShad++;
  if (positionShad>4){
    positionShad=0;
}

  r= random (0, 255);  
  g= random (0, 255);
  b= random (0, 255);
  r1= random (0, 255);  
  g1= random (0, 255);
  b1= random (0, 255);
  r2= random (0, 255);  
  g2= random (0, 255);
  b2= random (0, 255);
}
