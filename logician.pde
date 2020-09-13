import java.util.LinkedList;

Symbol j ;
Symbol sally;

void setup () {
  size(800, 800);
  rectMode(CENTER);
  j = new OrSymbol(10, 10);
  sally = new AndSymbol(10, 10);
}

void draw() {
  background(125);
  j.drawSelf();
  sally.drawSelf();
}
