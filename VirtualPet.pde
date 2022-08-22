void setup() {
  size(400,400);
}
void draw() {
  noStroke();
  
  fill(255, 240, 199); // Feet
  rect(50,40, 50, 320);
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
}
