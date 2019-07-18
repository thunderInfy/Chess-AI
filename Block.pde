class Block{
  //i-th row and j-th col block
  int i,j,x,y;
  boolean colour;
  boolean highlight;
  boolean haspiece;
  static final int block_size = 110;
  
  Block(int i, int j){
    this.i = i;
    this.j = j;
    this.x = block_size*(i-2);
    this.y = block_size*(j-2);
    this.haspiece = false;
    if((i+j)%2==0){
      colour = true;
    }
    else{
      colour = false;
    }
    highlight = false;
  }
  void display(){
     ui.block_set_background(this);
  }
  void toggle(){
    highlight = highlight ^ true;
  }
}
