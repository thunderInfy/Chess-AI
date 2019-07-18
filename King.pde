class King extends Piece{
  King(int i, int j, boolean colour){
    super(i,j,colour);
    if(colour){
      my_img = loadImage("images/white_king.png");
      vis.board_vis[i][j] = byte(unhex("E"));
    }
    else{
      my_img = loadImage("images/black_king.png");
      vis.board_vis[i][j] = byte(unhex("6"));
    }
  }
}
