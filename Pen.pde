class Pen {

  public PVector coords;
  private PVector lastEdge;
  private float lastWidth;


  public Pen() {
    this.coords= new PVector(60, 40);
  }

  public void addWidth(float givenWidth) {
    if (lastEdge != null){
    coords.x = lastEdge.x + givenWidth/2;
    }
    
    if (coords.x >= width-givenWidth-20) {
      coords.y += 60;
      coords.x = 40;
    }
    lastEdge = new PVector(coords.x+givenWidth/2, coords.y); // check
    lastWidth = givenWidth;
  }
  
  public void removeWidth(Symbol s){
    // looks at s, and sets the pen in the spot "after s." 
    // this is bound to cause problems later on
    coords.x = s.x;
    coords.y = s.y;
    lastEdge = new PVector(coords.x-s.MYWIDTH/2, coords.y);
  }
  
  // public void removeWidth(float givenWidth) {
  //  lastEdge.x -= givenWidth;
    
  //  if (lastEdge.x <= 40) {
  //    lastEdge.y -= 60;
  //    coords.y -= 60;
  //    coords.x = width-givenWidth-20;
  //    //lastEdge = null;
  //    //coords.x = 300;
  //    //coords.y = 300;
  //  }
  //}
}
