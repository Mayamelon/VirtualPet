float mouseRot;

void setup() {
  size(400,400);
}

void draw() {
  background(154, 250, 249);
  mouseRot = atan2(height/2-mouseY, width/2-mouseX);
  //println(mouseRot * 180 / PI);
  noStroke();
  
  fill(255, 240, 199); // Feet
  //rect(50,40, 50, 320);
  quad(50,40, 100, 40, 100, 360, 50, 360);
  rect(300,40, 50, 320);
  
  fill(181, 165, 101); // Cardboard
  rect(70,45, 260, 310);
  
  stroke(0, 0, 0);
  fill(255, 0, 0); //electronics board
  rect(80,55, 240, 290);
  noStroke();
  
  fill(252, 207, 237); //Post-it
  quad(90, 65, 310, 65, 325, 350, 75, 350);
  
  stroke(0, 0, 0);
  strokeWeight(3);
  fill(76, 145, 97); // Eyes background
  ellipse(150,125, 35, 35);
  ellipse(250,125, 35, 35);
  
  fill(255, 255, 255); // Eyes white
  ellipse(150,135, 25, 15);
  ellipse(250,135, 25, 15);
  
  fill(0, 0, 0); //pupils
  ellipse(150,132, 10, 10);
  ellipse(250,132, 10, 10);
  
  fill(255,255,255);
  rect(0,0, 100, 25);
  fill(0,0,0);
  text("x:" + mouseX + ", y: " + mouseY, 5, 15);
  
  strokeWeight(5);
  arc(200,250, 50, 50, mouseRot, mouseRot+PI);
}

float[] rotateAroundCenter(float x, float y, float rot) {
  float[] newPoint = new float[2];
  float originX = width/2 - x;
  float originY = height/2 - y;
  float hyp = sqrt(pow(originX, 2) + pow(originY, 2));
  float rotatedX = cos(acos(originX/hyp)+rot+PI)*hyp;
  float rotatedY = sin(asin(originY/hyp)+rot+PI)*hyp;
  
  float newX = rotatedX + width/2;
  float newY = rotatedY + height/2;
  newPoint[0] = newX;
  newPoint[1] = newY;
  
  return newPoint;
}
