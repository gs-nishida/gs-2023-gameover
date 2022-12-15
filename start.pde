void start_scene(){//スタートシーン処理
  background( 0 );
  image( start, 100, 0, 1400, 900 );//イラストの読み込み
  //line( width / 2 , 0, width / 2, height );//中央に線を引く
  text( "Please click to start", width / 3 + 45, height - 180 );//テキストの文字を表示
  
  if( frameCount / 8 % 2 == 0 ){//textのアニメーション
    fill( 0, 0, 0, 0 );
  }else{
    fill( 0, 0, 0, 255 );
  }
}
