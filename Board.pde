class Board{
  Bishop[] bishops;
  Pawn[] pawns;
  Rook[] rooks;
  King[] kings;
  Queen[] queens;
  Knight[] knights;
  int prev_i, prev_j;
  
  Board(){
    
    prev_i = -1;
    prev_j = -1;
    
    rooks = new Rook[4];
    rooks[0] = new Rook(2,9,true);
    rooks[1] = new Rook(9,9,true);
    rooks[2] = new Rook(2,2,false);
    rooks[3] = new Rook(9,2,false);
    
    knights = new Knight[4];
    knights[0] = new Knight(3,9,true);
    knights[1] = new Knight(8,9,true);
    knights[2] = new Knight(3,2,false);
    knights[3] = new Knight(8,2,false);
    
    
    bishops = new Bishop[4];
    bishops[0] = new Bishop(4,9,true);
    bishops[1] = new Bishop(7,9,true);
    bishops[2] = new Bishop(4,2,false);
    bishops[3] = new Bishop(7,2,false);
    
    queens = new Queen[2];
    queens[0] = new Queen(5,9,true);
    queens[1] = new Queen(5,2,false);
    
    kings = new King[2];
    kings[0] = new King(6,9,true);
    kings[1] = new King(6,2,false);
    
    pawns = new Pawn[16];
    for(int i=0;i<8;i++){
      pawns[i] = new Pawn(i+2,8,true);
    }
    for(int i=8;i<16;i++){
      pawns[i] = new Pawn(i-6,3,false);
    }
    vis.display_board_vis();
  }
  void display(){
    for(int i=0; i<rooks.length; i++){
      rooks[i].display();
    }
    for(int i=0; i<knights.length; i++){
      knights[i].display();
    }
    for(int i=0; i<bishops.length; i++){
      bishops[i].display();
    }
    for(int i=0; i<kings.length; i++){
      kings[i].display();
    }
    for(int i=0; i<queens.length; i++){
      queens[i].display();
    }
    for(int i=0; i<pawns.length; i++){
      pawns[i].display();
    }
  }
  
  void display_highlighted(){
    if(ui.blocks[prev_i][prev_j].haspiece){
      print("have to display possible moves here");
    }
  }
}
