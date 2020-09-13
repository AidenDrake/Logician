class Sentence {
  LinkedList<Symbol> register = new LinkedList<Symbol>();

  void add(Symbol s) {
    this.register.addLast(s);
  }
}
