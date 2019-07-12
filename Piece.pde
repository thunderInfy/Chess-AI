class Piece{
  //here i,j denote the position of the piece
  int i,j,x,y;
  PImage my_img;
  boolean colour;
  Piece(int i, int j, boolean colour){
    this.i = i;
    this.j = j;
    x = i*Block.block_size;
    y = j*Block.block_size;
    this.colour = colour;
  }
  void display(){
    ui.blocks[i][j].haspiece = true;
    image(my_img,x,y,Block.block_size,Block.block_size);
  }
}
