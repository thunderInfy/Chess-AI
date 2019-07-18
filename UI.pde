class UI{
  
  //nxn board
  static final int n=12;
  PImage black, white, black_high, white_high;
  
  Block[][] blocks;
  UI(){
    black = loadImage("images/black.jpg");
    white = loadImage("images/white.jpg");
    black_high = loadImage("images/black_high.jpg");
    white_high = loadImage("images/white_high.jpg");
    blocks = new Block[n][n];
    for(int i=0; i<n; i++){
      for(int j=0; j<n; j++){
        blocks[i][j] = new Block(i,j); 
      }
    }
    vis = new BoardVis();
    board = new Board();
  }
  void display(){
    background(255);
    for(int i=2; i<n-2; i++){
      for(int j=2; j<n-2; j++){
        blocks[i][j].display();
      }
    } 
    board.display();
  }
  void block_set_background(Block b){
    if(b.colour){
      if(b.highlight){
        image(white_high,b.x,b.y,Block.block_size,Block.block_size);
      }
      else{
        image(white,b.x,b.y,Block.block_size,Block.block_size); 
      }  
    }
    else{
      if(b.highlight){
        image(black_high,b.x,b.y,Block.block_size,Block.block_size);
      }
      else{
        image(black,b.x,b.y,Block.block_size,Block.block_size);
      }  
    }
  }
}
