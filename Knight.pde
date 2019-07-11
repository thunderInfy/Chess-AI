class Knight extends Piece{
  Knight(int i, int j, boolean colour){
    super(i,j,colour);
    if(colour){
      my_img = loadImage("images/white_knight.png");
    }
    else{
      my_img = loadImage("images/black_knight.png");
    }
  }
}
