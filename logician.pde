void setup () {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(0);
  drawAndBlock(height/2-80, width/2);
  drawOrBlock(height/2, width/2);
}

void drawAndBlock(int x, int y) {
  drawSquare(x, y);
  
  pushMatrix();
  translate(x, y);
  line(-20, 0, 20, 0);
  fill(0);
  ellipse(0, 0, 20, 20);
  popMatrix();
}

void drawOrBlock(int x, int y) {
  drawSquare(x, y);
  
  pushMatrix();
  translate(x, y);
  fill(0);
  line(-20, 0, 20, 0);
  
  beginShape();
  vertex(0, -20);
  vertex(10, 0);
  vertex(0, 20);
  vertex(-10, 0);
  endShape(CLOSE);
  
  popMatrix();
}

void drawSquare(int x, int y){
  pushMatrix();
  translate(x, y);
  fill(255);
  rect(0, 0, 40, 40);
  popMatrix();
}

void drawNotBlock(int x, int y) {
  
}
