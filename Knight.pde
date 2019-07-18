class Knight extends Piece{
  Knight(int i, int j, boolean colour){
    super(i,j,colour);
    if(colour){
      my_img = loadImage("images/white_knight.png");
      vis.board_vis[i][j] = byte(unhex("A"));
    }
    else{
      my_img = loadImage("images/black_knight.png");
      vis.board_vis[i][j] = byte(unhex("2"));
    }
  }
}
