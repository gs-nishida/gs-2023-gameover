PVector p,v;
int Ex,Ey,hp,s, m = 5;
boolean f = false;
void battle_set(){
  if( ! this.f ) {
    this.f = true;
    this.p = new PVector( width / 2, height / 2 );
    this.v = new PVector( 0, 0 );
    unit = new ArrayList<Unit>();
    unit.add( new User( 1, 100, this.p, this.v, this.player ) );  
    
    for( int n = 0; n <= 5 ; n++){
      do{
        Ex = int( random( 0, width ) );
        Ey = int( random( 0, height ) );
      }while( Ex > width / 2 - 100 && Ex < width / 2 + 100 && Ey > height / 2 - 100 && Ey < height / 2 + 100 );
       unit.add( new Enemy( /*enemy,*/ 2, 10, new PVector( Ex, Ey ),
                             //new PVector( -1, -1 ),
                             new PVector( 0, 0 ), this.enemy ) );
    }
  }
}

void battle_scene(){
  background( 255 );
  
  if( frameCount % 20 == 0 ) s++;//無敵時間
  
  for( int n = 1; n < unit.size(); n++ ) {
    Unit A = unit.get( 0 ), // 操作キャラクター
         B = unit.get( n ); // n 番目の敵
    
    // もしも操作キャラクターと敵の直線距離が 250 px 未満なったら
    if( dist( A.getP().x, A.getP().y, B.getP().x, B.getP().y ) < 1000 ) {
      
      PVector d = A.getP().copy();             // 操作キャラクターの位置ベクトルをコピー
      d.sub( B.getP() );                       // 位置ベクトルの引き算をおこなう
      float m = max( abs( d.x ), abs( d.y ) ); // 絶対値の d.x と d.y のうち大きい方を取る(正規化のため)
      d.div( m );                              // d.x と d.y を 0.0 ～ 1.0 に正規化する
      d.mult( 2.5 );                           // d.x と d.y を 2.5 倍する(敵の運動量(速度)を計算)
      B.setV( d.copy() );                   // 敵の運動ベクトルに d を設定する
      
    }
    
    if( A.getID() != B.getID() && dist( A.getP().x, A.getP().y, B.getP().x, B.getP().y ) < 50 ) {
      if( s >= 1 ){
        User user = ( User )unit.get( 0 );
        user.setHP( user.getHP() - 10 );
        s = 0;
      }
    }
  }
  
  if( unit.get( 0 ).getID() > 0 ){
    time();
  }
  if( unit.get( 0 ).getID() < 0 ){
    textSize( 50 );
    fill( 255, 0, 0 );
    text("YOU DEAD" , width / 2, height / 2);
    
    if( frameCount % 60 == 0 ) m--;
    text( m +"秒後にメニューへ戻る" , width / 2 , height / 2 + 260 );
    
    if( m == 0 ){
      background( 0 );
      scene = "menu";
    }
    
  }
  
  
  for( int n = 0; n < unit.size(); n++ ) {
    if( unit.get( 0 ).getID() < 0 ) unit.get( n ).getV().set( 0, 0 );
    unit.get( n ).move();
  }
  // for( Ball bb : unit ) bb.move(); // すべてのキャラクターを動かす
  
}
  
