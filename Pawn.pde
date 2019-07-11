class Pawn extends Piece{
  Pawn(int i, int j, boolean colour){
    super(i,j, colour);
    if(colour){
      my_img = loadImage("images/white_pawn.png");
    }
    else{
      my_img = loadImage("images/black_pawn.png");
    }
  }
}
