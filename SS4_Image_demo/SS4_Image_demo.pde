//Created a PImage object to store image
//Donnell Maylor
//SS4_Image_demo

PImage pic;
PImage rain;
int time1 = 3000;
int time2 = 10000;
int time3 = 12000;
int time4 = 14000;
float x = 0;


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
    //x -= 0.5;
  } else if(currentTime > time1) {
    image (pic, width/2,height/2, 800, 400);
    textSize(20);
    text("and wash away the rain",30, 90 );
    //x +=2;
  }
 /* 
  if(currentTime > time3); {
    textSize(20);
    text("won't you come, won't you come...",30,120 );
  } if(currenTime > time4){ 
    textSize(20);
    text("won't you come, won't you come...",30,120 );
  }
*/
  
fill(51, 153, 255);
textSize(32);
text("Blakhole sun won't you come",25, 60);

}
