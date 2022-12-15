int minute = 0, second = 0;
void time(){
  if( frameCount % 60 == 0 ) second++;
  if( second == 60 ) {
    minute++; 
    second = 0;
  }
  fill( 0 );
  text( nf( minute, 2 ) + ":" + nf( second, 2 ), width / 2 - 60, 65 );
  
  if( frameCount % 300 == 0 ) coin += 2;
  
  
  
}
