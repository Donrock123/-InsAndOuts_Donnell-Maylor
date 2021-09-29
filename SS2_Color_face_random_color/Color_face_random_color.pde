//Donnell Maylor
//Color face random color
//Clicker on the face to change its color 

//int r, g, b;
float r;
float g;
float b;

void setup() {
  size(1080, 720);
  background(255); 
  
  r = random(255);
  g = random(255);
  b = random(255);
}

void draw() {
  background(255);
  strokeWeight(4);
  stroke(r, g, b);
  fill(r, g, b, 130);
  ellipse(550, 300, 400, 400);
}


void mousePressed() {
  
  float d = dist(mouseX, mouseY, 550, 300);
  if (d < 200) {
    r = random(255);
    g = random(255);
    b = random(255);
  }
}
