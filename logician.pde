import java.util.LinkedList;

Symbol j ;

void setup () {
  size(800, 800);
  rectMode(CENTER);
  j = new OrSymbol(10, 10);
}

void draw() {
  background(125);
  drawAndBlock(height/2-40, width/2);
  drawOrBlock(height/2, width/2);
  drawNotBlock(height/2+40, width/2);
  drawPrime(height/2+105, width/2);
  drawVBlock(height/2+80, width/2);
  j.drawSelf();
}

void drawAndBlock(float x, float y) {
  pushMatrix();
  translate(x, y);
  drawSquare();

  line(-20, 0, 20, 0);
  fill(0);
  ellipse(0, 0, 20, 20);
  popMatrix();
}

void drawOrBlock(float x, float y) {
  pushMatrix();
  translate(x, y);
  drawSquare();

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

void drawVBlock(float x, float y) {
  pushMatrix();
  translate(x, y);
  drawSquare();

  fill(0);
  rect(0, 0, 20, 20);

  popMatrix();
}

void drawSquare() {
  fill(255);
  rect(0, 0, 40, 40);
}

void drawNotBlock(float x, float y) {
  pushMatrix();
  translate(x, y);
  drawSquare();

  float disp = 7;
  //strokeWeight(2);
  line(-20+disp, -20, 20, 20-disp);
  line(-20, -20+disp, 20-disp, 20);
  fill(0);
  rect(0, 0, 10, 40);
  popMatrix();
}

void drawPrime(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(255);
  rect(0, 0, 10, 40);
  fill(0);
  rect(0, 0, 2, 30);
  popMatrix();
}

void keyPressed() {
  circle(200, 200, 200);
}
