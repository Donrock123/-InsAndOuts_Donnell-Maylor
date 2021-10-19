//Donnell Maylor
//Midterm_WIP_1

String state= "Game Start"; 

int ellipseY=0; 

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

void setup() {
  size (1000, 1000);
  
  shad[0] = 000;
  shad[1] = 100;
  shad[2] = 200;
  shad[3] = 300;
  shad[4] = 400;
  
  textAlign(CENTER);
  textSize(36);
}

void drawCircle1() {
fill(r1, g1, b1);
ellipse(300, 500, 200, 200);
}

void drawCircle2() {
fill(r2, g2, b2);
ellipse(700, 500, 200, 200);
}


void draw() {
  
  if (state=="Game Start") {
    pregame();
  } else if (state=="game") {
    game();
  } else if (state=="Game Over") {
    gameover();
  }
  println(state);
  
  if (mouseX>width/2) {
    drawCircle1();
  
}
else if (mouseY> height/2) { 
    drawCircle2();
    
  }
}


void mousePressed() {
  if (state== "Game Start") {
    state="game";
  } else if (state=="Game Over") {
    state= "Game Start";
  }
}

void pregame() {
  background(0);
  text("click to start", width/2, height/2);
}

void game() {
  background(255);
  mousePressed();{
  println(shad[positionShad]);
  positionShad++;
  if (positionShad>4){
    positionShad=0;
  }
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
  
  /*if () { 
    state="Game Over";
    ellipseY=0; 
  }
  */
}

void gameover() {
  background(0, 0, 0);
  text("click to start over.", width/2, height/2 + 50);
}
