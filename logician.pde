
void setup () {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(125);
  drawAndBlock(height/2-40, width/2);
  drawOrBlock(height/2, width/2);
  drawNotBlock(height/2+40, width/2);

  //if (keyPressed && key == 's'){
  //  sep+=0.01;
  //  println("sep is " + sep);
  //}
}

void drawAndBlock(float x, float y) {
  drawSquare(x, y);

  pushMatrix();
  translate(x, y);
  line(-20, 0, 20, 0);
  fill(0);
  ellipse(0, 0, 20, 20);
  popMatrix();
}

void drawOrBlock(float x, float y) {
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

void drawSquare(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(255);
  rect(0, 0, 40, 40);
  popMatrix();
}

void drawNotBlock(float x, float y) {
  drawSquare(x, y);
  pushMatrix();
  translate(x, y);
  float disp = 7;
  //strokeWeight(2);
  line(-20+disp, -20, 20, 20-disp);
  line(-20, -20+disp, 20-disp, 20);
  fill(0);
  rect(0, 0, 10, 40);
  popMatrix();
}
