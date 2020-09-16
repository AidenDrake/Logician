import java.util.LinkedList;

Pen pen = new Pen(); // is this good?
LinkedList<Symbol> drawList = new LinkedList<Symbol>();

void setup () {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(100);
  for (Symbol s : drawList) {
    s.drawSelf();
  }
}

void keyPressed() {
  // procedurally:
  if (key == 'a') {
    drawList.add(new OrSymbol());
  }
  if (key == 's') {
    drawList.add(new AndSymbol());
  }
  if (key == 'd') {
    drawList.add(new NotSymbol());
  }
  if (key == 'f') {
    drawList.add(new VarSymbol());
  }
  if (key == 'g') {
    drawList.add(new PrimeSymbol());
  }
  if (key == BACKSPACE) {
    if (drawList.size()>0) {
      Symbol s = drawList.removeLast();
      pen.moveLastEdgeBack();
    }
  }
}
