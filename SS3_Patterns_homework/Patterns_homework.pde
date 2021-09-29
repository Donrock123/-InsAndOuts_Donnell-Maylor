//Donnell Maylor
//Week 5 (9.22) 

void setup(){
size(1000,1000);
rectMode(CENTER);
}

void draw(){
  background(51,255,255);
  int x = 100;
  int y = 100;
  int z = 100;
  int a = 100;
  int b = 100;
  int c = 100; 
 
  while(x<width){
  ellipse(x, height/2, 85,85);
  x+=100;
  }
 
  while(y<height){
  rect(width/2, y, 85, 85);
  y+=100;
  }
  while(z<width){
  rect(z, 300, 85, 85);
  z+=100;
  }
  
  while(a<height){
  ellipse(a, 700, 85,85);
  a+=100;
  }
  
  while(b<width){
  rect(300, b, 85, 85);
  b+=100;
  }
  while(c<width){
  ellipse(700, c, 85,85);
  c+=100;
  }
  println(x);

}
