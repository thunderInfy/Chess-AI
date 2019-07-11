UI ui;
Board board;

void settings(){
  size((UI.n)*(Block.block_size), (UI.n)*(Block.block_size));
}

void setup(){
  ui = new UI();
}
void draw(){
  ui.display();
}
