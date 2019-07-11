class UI{
  
  //nxn board
  static final int n=8;
  PImage black, white;
  
  Block[][] blocks;
  UI(){
    black = loadImage("images/black.jpg");
    white = loadImage("images/white.jpg");
    blocks = new Block[n][n];
    for(int i=0; i<n; i++){
      for(int j=0; j<n; j++){
        blocks[i][j] = new Block(i,j); 
      }
    }
    board = new Board();
  }
  void display(){
    for(int i=0; i<n; i++){
      for(int j=0; j<n; j++){
        blocks[i][j].display();
      }
    } 
    board.display();
  }
  void block_set_background(Block b){
    if(b.colour){
      image(white,b.x,b.y,Block.block_size,Block.block_size); 
    }
    else{
      image(black,b.x,b.y,Block.block_size,Block.block_size);
    }
  }
}
