import java.util.LinkedList;

LinkedList<Symbol> drawList = new LinkedList<Symbol>();

void setup () {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(125);
  for (Symbol s : drawList){
    s.drawSelf();
  }
}

void keyPressed() {
  // procedurally:
  if (key == 'a'){
     drawList.add(new OrSymbol());
  }
  if (key == 's'){
     drawList.add(new AndSymbol());
  }
  if (key == 'd'){
     drawList.add(new NotSymbol());
  }
  if (key == 'f'){
     drawList.add(new PrimeSymbol());
  }
  if (key == BACKSPACE){ // add in null case
   Symbol s = drawList.removeLast();
   s.moveLastEdgeBack();
  }
}
