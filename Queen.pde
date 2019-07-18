class Queen extends Piece{
  Queen(int i, int j, boolean colour){
    super(i,j,colour);
    if(colour){
      my_img = loadImage("images/white_queen.png");
      vis.board_vis[i][j] = byte(unhex("D"));
    }
    else{
      my_img = loadImage("images/black_queen.png");
      vis.board_vis[i][j] = byte(unhex("5"));
    }
  }
}
