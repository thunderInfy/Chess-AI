class Pawn extends Piece{
  Pawn(int i, int j, boolean colour){
    super(i,j, colour);
    if(colour){
      my_img = loadImage("images/white_pawn.png");
      vis.board_vis[i][j] = byte(unhex("9"));
    }
    else{
      my_img = loadImage("images/black_pawn.png");
      vis.board_vis[i][j] = byte(unhex("1"));
    }
  }
}
