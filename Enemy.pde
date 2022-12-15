class Enemy extends User{
  Enemy( int id, int hp, PVector p, PVector v, List<PImage> imgs ){ super(  id, hp, p, v, imgs ); }
    @Override void myshape(){
      if( super.id > 0 ){
        noStroke();
        image( this.imgs.get( this.n ), this.p.x - 50, this.p.y - 55 );
      }
    }
    
    @Override void hitpoint(){
      float a = 50 * ( super.hp / 10.00 );
      if( a <= 0 ){
        a = 0;
        super.id = -1;
      }
      
      if ( a < 50 && super.id > 0 ){
        stroke( 1 );
        fill( 0, 0, 0, 0 );
        rect( super.p.x - 26, super.p.y - 41, 51, 11 ); 
        noStroke();
        fill( 255, 0, 0 );
        rect( super.p.x - 25, super.p.y - 40, a, 10 ); 
      }
    }
}
