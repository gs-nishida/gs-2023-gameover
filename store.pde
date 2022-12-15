int coin = 0;

void store_scene(){
  scene = "store";
  
  shop_img();
  background( 0 );
  image( shopback, 45, 0 );
  fill( 140 );
  textAlign(CENTER);
  textSize(30);
  //rect( width - 350, 30, 330, 80 ); //balance
  rect( 20, height - 90, 180, 60 ); //back
  
  /*
  rect( 300, 200, 195, 260 ); //character1
  rect( 600, 200, 195, 260 ); //character2
  rect( 300, 550, 195, 260 ); //character3
  rect( 600, 550, 195, 260 ); //character4

  rect( 950, 200, 405, 540 ); //select character
  
  */
  
  fill(25);
  text("← BACK",100,height - 50);
//text("COIN : " + coin,width - 270,80);
}
