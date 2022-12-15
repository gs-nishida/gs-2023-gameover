int y = 0;
void change_scene(){
  fill( 0 );
  rect( 0, y, width, 15 );
  if( frameCount % 1 == 0 ) y += 15;
  if( y == height ){
    scene = "menu";
  }
}
