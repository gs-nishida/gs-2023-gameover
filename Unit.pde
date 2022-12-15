interface Unit{
  abstract int     getID (); //各ユニットにおいて id を返す抽象メソッド
  abstract PVector getP  (); //各ユニットにおいて p(位置) を返す抽象メソッド
  abstract PVector getV  (); //各ユニットにおいて v(速度・方向) を返す抽象メソッド
  
  abstract void    setN  ( int     n  );
  abstract void    setID ( int     id ); //各ユニットにおいて id を設定する抽象メソッド
  abstract void    setP  ( PVector p  ); //各ユニットにおいて p(位置) を設定する抽象メソッド
  abstract void    setV  ( PVector v  ); //各ユニットにおいて v(速度・方向) を設定する抽象メソッド
  
  abstract void    move(); //各ユニットにおいて移動等実行する抽象メソッド
}
  
