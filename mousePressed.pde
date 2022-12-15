void mousePressed(){
  if( scene == "start" )scene = "change";//scene = startだったら changeシーンを呼び出す
  
  else if( scene == "menu" ){//scene = menu だったら
    if( width / 2 - 140 <= mouseX && mouseX <= width / 2 + 140 &&
        height / 5 + 100 <= mouseY && mouseY <= height / 5 + 260 )  scene = "battle";//マウスがstartボタン押したら ????? を呼び出す
        
    if( width / 2 - 140 <= mouseX && mouseX <= width / 2 + 140  && 
        height / 5 + 240 <= mouseY && mouseY <= height / 5 + 400 )  scene = "store";//マウスがstoreボタン押したら 商店画面を呼び出す
        
    if( width / 2 - 140 <= mouseX && mouseX <= width / 2 + 140  &&
        height / 5 + 380 <= mouseY && mouseY <= height / 5 + 540 )  scene = "option";
        
    if( width / 2 - 140 <= mouseX && mouseX <= width / 2 + 140  && 
        height / 5 + 520 <= mouseY && mouseY <= height / 5 + 680 )  exit();//マウスがEndボタン押したら ゲームを終了する
  }
  
  else if( scene == "store" ) {//商店画面にいったら
    if(20 <= mouseX && mouseX <= 200 &&
       height - 90 <= mouseY && mouseY <= height - 30){//マウスが 20 <= x <= 200, height - 90 <= mouseY <= height - 30のところ( backボタン) をクリックしたら
       menu_scene();//メニューを呼び出す
       scene = "menu";// menu を scene に代入
       background( 0 );//背景を黒に設定
       }
  }
  
  else if( scene == "option" ) {//オプション画面にいったら
    if(20 <= mouseX && mouseX <= 200 &&
       height - 90 <= mouseY && mouseY <= height - 30){//マウスが 20 <= x <= 200, height - 90 <= mouseY <= height - 30のところ( backボタン) をクリックしたら
       menu_scene();//メニューを呼び出す
       scene = "menu";// menu を scene に代入
       background( 0 );//背景を黒に設定
       }
  }
}
