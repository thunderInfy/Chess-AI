UI ui;
Board board;
BoardVis vis;

void settings(){
  size((UI.n-4)*(Block.block_size), (UI.n-4)*(Block.block_size));
}

void setup(){
  ui = new UI();
}
void draw(){
  ui.display();
}
void mouseClicked(){
  int i,j;
  i = mouseX/Block.block_size;
  j = mouseY/Block.block_size;
  
  if(board.prev_i==i && board.prev_j==j){
    //the same block is pressed again, thereby unhighlighting the block
    ui.blocks[i][j].toggle();
    board.prev_i = -1;
    board.prev_j = -1;
  }
  else{
    if(board.prev_i!=-1 || board.prev_j!=-1){
      //block transfer from prev_i, prev_j to i,j
      ui.blocks[board.prev_i][board.prev_j].toggle();
      ui.blocks[i][j].toggle();
    }
    else{
      //no block was highlighted before
      ui.blocks[i][j].toggle();
    }
    board.prev_i = i;
    board.prev_j = j;
    board.display_highlighted();
  }
}
