//Created a PImage object to store image
//Donnell Maylor
//SS4_Image_demo

PImage pic;
PImage rain;
int time1 = 3000;
int time2 = 6000;
int time3 = 8000;
int time4 = 10000;
float x = 0;
String quote = "won't you come, won't you come..."; 


void setup(){
  size (1000, 1000);
  background(255);
  imageMode(CENTER);
  pic= loadImage("Sun.jpg");
  rain= loadImage("Rain.jpg");
}

void draw(){
  background(255);
  int currentTime = millis();
  image (rain, width/2,height/2, 800, 400);
  if (currentTime > time2) {
    
  } else if(currentTime >= time1) {
    image (pic, width/2,height/2, 800, 400);
    textSize(20);
    text("and wash away the rain",30, 90 );
    fill(51, 153, 255);
    textSize(20);
    text(quote,25, 120);
  }
  
fill(51, 153, 255);
textSize(32);
text("Blakhole sun won't you come",25, 60);

}

void mousePressed() {
  int currentTime = millis();
  if (currentTime > time3) {
   fill(51, 153, 255);
   textSize(20);
   text( "won't you come, won't you come...",25, 90);
 
  } else {
    
  }
}
