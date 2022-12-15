void menu_scene(){//メニューシーン処理
  menu_img();
  image( menu, 45, 0 );//イラストの読み込み
  fill(255,0,0);//文字を赤色に設定
  textSize( 75 );//ゲームメニュー文字の大きさ
  //line( width / 2 , 0, width / 2, height );
  text( "GAME MENU", width /2 + 5, height / 5 + 50 );//ゲームメニューを表示
  
  textSize( 50 );//文字の大きさを50pxに設定
  textAlign(CENTER);//文字中央揃え
  
  image( start_button, width / 2 - 140 , height / 5 + 100 );
  image( store_button, width / 2 - 140 , height / 5 + 240 );
  image( option_button, width / 2 - 140, height / 5 + 380 );
  image( end_button, width / 2 - 140, height / 5 + 520 );
  
  /*
  fill( 255 );//ボタンの色 
  rect( width / 2 - 118, height / 5 + 100, 240, 80 );//ゲーム開始ボタン
  rect( width / 2 - 118, height / 5 + 235, 240, 80 );//商店ボタン
  rect( width / 2 - 118, height / 5 + 370, 240, 80 );//オプション
  rect( width / 2 - 118, height / 5 + 505, 240, 80 );//終了ボタン
  
  fill( 0 );
  text("START",width / 2,height/5 + 158);//↓文字を表示
  text("STORE",width / 2, height / 5 + 295);
  text("OPTION",width / 2 , height / 5 + 430);
  text("END",width / 2, height / 5 + 565);
  */
  
}
