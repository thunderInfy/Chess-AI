class Block{
  //i-th row and j-th col block
  int i,j,x,y;
  boolean colour;
  static final int block_size = 100;
  
  Block(int i, int j){
    this.i = i;
    this.j = j;
    this.x = block_size*i;
    this.y = block_size*j;
    if((i+j)%2==0){
      colour = true;
    }
    else{
      colour = false;
    }
  }
  void display(){
    ui.block_set_background(this);
  }
}
