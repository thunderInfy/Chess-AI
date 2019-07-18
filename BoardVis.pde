class BoardVis{
  /*
     0 -- Empty Square
     1 -- Black Pawn
     2 -- Black Knight
     3 -- Black Bishop 
     4 -- Black Rook 
     5 -- Black Queen 
     6 -- Black King
     7 -- Not Used
     8 -- Not Used
     9 -- White Pawn
     A -- White Knight
     B -- White Bishop
     C -- White Rook
     D -- White Queen
     E -- White King
     F -- Out of chessboard block
  */
  
  byte[][] board_vis;
  BoardVis(){
    board_vis = new byte[12][12];
    for(int i=0; i<12; i++){
      for(int j=0; j<12; j++){
        board_vis[i][j] = byte(unhex("F"));
      }
    }
    for(int i=2; i<10; i++){
      for(int j=4; j<8; j++){
        board_vis[i][j] = byte(unhex("0"));
      }
    }
  }
  void display_board_vis(){
    for(int i=0; i<12; i++){
      for(int j=0; j<12; j++){
        print(hex(board_vis[j][i], 1));
      }
      print("\n");
    }
  }
}
