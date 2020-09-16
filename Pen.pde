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
  
   public void moveLastEdgeBack() {
    lastEdge = new PVector(coords.x-lastWidth/2, coords.y);
  }
}
