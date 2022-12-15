class User implements Unit{
  int     id, n;   //id を保持するフィールド変数
  PVector p, v; //p(位置)，v(速度・方向)を保持する変数
  int hp = 100;//プレイヤーのhp
  List<PImage> imgs;
  
  User( int id, int hp, PVector p, PVector v, List<PImage> imgs ){
     this.id = id; this.hp = hp;this.p = p; this.v = v; this.imgs = imgs;
  }
  
  int getID()    { return this.id;  }
  int getHP()    { return this.hp;  }
  PVector getP() { return this.p;   }
  PVector getV() { return this.v;   }
  
  
  void setID ( int id    ) { this.id = id;   }
  void setHP ( int hp    ) { this.hp = hp;   }
  void setP  ( PVector p ) { this.p = p;     }
  void setV  ( PVector v ) { this.v = v;     }
  void setN  ( int n )     { this.n = n;     }
  
  void myshape(){
    noStroke();

    image( this.imgs.get( this.n ), this.p.x - 55, this.p.y - 45 ); //<>//
    
    this.p.x = constrain( this.p.x, 25, width - 25);
    this.p.y = constrain( this.p.y, 25, height - 25);
    //プレイヤーをマップ外に移動させない
  }
  
  void hitpoint(){
    float a = 50 * ( this.hp / 100.00 );
    if( a <= 0 ){
      a = 0;
      this.id = -1;
    }
    if ( a < 50 && this.id > 0 ){
      stroke( 1 );
      fill( 0, 0, 0, 0 );
      rect( this.p.x - 26, this.p.y - 41, 51, 11 ); 
      noStroke();
      fill( 255, 0, 0 );
      rect( this.p.x - 25, this.p.y - 40, a, 10 );
    }
  }
  
  void move() {
    this.hitpoint();
    this.myshape();
    this.p.add( this.v );
  }
}
