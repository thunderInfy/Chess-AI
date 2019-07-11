class King extends Piece{
  King(int i, int j, boolean colour){
    super(i,j,colour);
    if(colour){
      my_img = loadImage("images/white_king.png");
    }
    else{
      my_img = loadImage("images/black_king.png");
    }
  }
}
