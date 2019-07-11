class Rook extends Piece{
  Rook(int i, int j, boolean colour){
    super(i,j,colour);
    if(colour){
      my_img = loadImage("images/white_rook.png");
    }
    else{
      my_img = loadImage("images/black_rook.png");
    }
  }
}
