import java.util.LinkedList;

Symbol j, sally, pilate, orson;

void setup () {
  size(800, 800);
  rectMode(CENTER);
  j = new OrSymbol();
  sally = new AndSymbol();
  pilate = new PrimeSymbol();
  orson = new OrSymbol();
}

void draw() {
  background(125);
  j.drawSelf();
  sally.drawSelf();
  pilate.drawSelf();
  orson.drawSelf();
}
