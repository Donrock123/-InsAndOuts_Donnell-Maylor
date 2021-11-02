//Donnell Maylor
//Midterm_Final
//Press any key to change sketch
//Click with the mouse to change color or array 

String state= "Sketch A"; 

int [] Number = new int [5];

String[] Milk= {"chocolate milk", "strawberry milk", "white milk"};

int positionNumber = 0;
int positionMilk = 0;

float r;
float g;
float b;



void setup() {
  size (1000, 1000);
  
  r = random(255);
  g = random(255);
  b = random(255);
  
  Number[0] = 000;
  Number[1] = 100;
  Number[2] = 200;
  Number[3] = 300;
  Number[4] = 400;
  
  textAlign(CENTER, CENTER);
  textSize(36);
}
  void drawRect1() {
fill(r, g, b);
rect(400, 500, 200, 200);
}
void drawTriangle1() {
fill(r, g, b);
triangle(120, 300, 232, 80, 344, 300);
}
void drawCircle1() {
fill(r, g, b);
ellipse(750, 250, 200, 200);
}


void draw() {
  
  if (state=="Sketch A") {
    Sketch_A();
  } else if (state=="Sketch B") {
    Sketch_B();
  } 
  }
   
{
    println("positionRandomNumber" + positionNumber );
    println(" positionMilk" + positionMilk);
}

void keyPressed(){
  if (state== "Sketch A") {
    state= "Sketch B";
  } else if (state== "Sketch B") {
    state= "Sketch A";}
  }

void mousePressed() {
  float d = dist(mouseX, mouseY, 550, 300);
  if (d < 200) {
    r = random(255);
    g = random(255);
    b = random(255);
  }
  
  if (positionNumber == Milk.length+1){
    positionNumber=0;
  } else {
    positionNumber++;
  }
  positionMilk= int(random(0, Milk.length)); 
}

void Sketch_A() {
  background(0);
  text (Number[positionNumber], width/2, height/2);
  text ("bottels of " + Milk[positionMilk] + " on the wall", width/2, height/2 + 50);
  
  println ("positionRandomNumber" + positionNumber);
  println ("positionrandomShapes" + positionMilk);
}

void Sketch_B() {
 background(190,190,190);
   if (mouseX>width/2) {
    drawCircle1();  
}
else if (mouseY> height/2) { 
    drawRect1();
}
else if (mouseY> width/3) {
    drawTriangle1();
}
}
