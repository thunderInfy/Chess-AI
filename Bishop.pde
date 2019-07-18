class Bishop extends Piece{
  Bishop(int i, int j, boolean colour){
    super(i,j,colour);
    if(colour){
      my_img = loadImage("images/white_bishop.png");
      vis.board_vis[i][j] = byte(unhex("B"));
    }
    else{
      my_img = loadImage("images/black_bishop.png");
      vis.board_vis[i][j] = byte(unhex("3"));
    }
  }
}
