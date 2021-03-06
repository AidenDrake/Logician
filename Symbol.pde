PVector lastEdge;

abstract class Symbol {

  public float x;
  public float y;

  static final float MYWIDTH = 40;

  Symbol(float x_, float y_) {
    this.x = x_;
    this.y = y_;
  }

  Symbol(float myWidth) {
    pen.addWidth(myWidth);
    this.x = pen.coords.x;
    this.y = pen.coords.y;
    //println("new symbol made at ("+x+','+y+").");
  }

  protected void drawSquare() {
    fill(255);
    rect(0, 0, 40, 40);
  }

  abstract void drawSelf();
  
}

class AndSymbol extends Symbol {

  AndSymbol (float x_, float y_) {
    super(x_, y_);
  }

  AndSymbol() {
    super(MYWIDTH);
  }

  @Override
    void drawSelf() {
    pushMatrix();
    translate(x, y);
    drawSquare();

    line(-20, 0, 20, 0);
    fill(0);
    ellipse(0, 0, 20, 20);
    popMatrix();
  }
}

class OrSymbol extends Symbol {

  OrSymbol(float x_, float y_) {
    super(x_, y_);
  }

  OrSymbol() {
    super(MYWIDTH);
  }

  @Override
    void drawSelf() {
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
}

class NotSymbol extends Symbol {

  NotSymbol(float x_, float y_) {
    super(x_, y_);
  }

  NotSymbol() {
    super(MYWIDTH);
  }

  @Override
    void drawSelf() {
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
}

class PrimeSymbol extends Symbol {
  private static final float MYWIDTH = 10;

  PrimeSymbol(float x_, float y_) {
    super(x_, y_);
  }

  PrimeSymbol() {
    super(MYWIDTH);
  }


  @Override
    void drawSelf() {
    pushMatrix();
    translate(x, y);
    fill(255);
    rect(0, 0, 10, 40);
    fill(0);
    rect(0, 0, 2, 30);
    popMatrix();
  }
}

class VarSymbol extends Symbol {

  VarSymbol(float x_, float y_) {
    super(x_, y_);
  }

  VarSymbol() {
    super(MYWIDTH);
  }


  @Override
    void drawSelf() {
    pushMatrix();
    translate(x, y);
    drawSquare();

    fill(0);
    rect(0, 0, 20, 20);

    popMatrix();
  }
  
}
