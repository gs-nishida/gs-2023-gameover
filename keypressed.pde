//キーボードのキーが押されたときの処理
int di, dii, num;
void keyPressed() {
  Unit user = unit.get( 0 );
  switch( key ) { //特定のキーにおいて以下実行
    case 'w':
        num = 0;
        // user.setN( 8 ); 
        v.y = -3.0;
        dii = 1;
        break; //w が押されたら上方向の速度 3 px を設定
    case 's': 
        num = 4;
        v.y =  3.0; 
        dii = 1;
        break; //s が押されたら下方向の速度 3 px を設定
    case 'a': 
        num = 0;
        // num++;
        v.x = -3.0; 
        this.d = false;
        dii = 1;
        break; //a が押されたら左方向の速度 3 px を設定
    case 'd': 
        num = 4;
        // user.setN( 4 ); 
        v.x =  3.0; 
        this.d = true; 
        dii = 1;
        break; //d が押されたら右方向の速度 3 px を設定
  }
  if( di == 4 ) di = 0;
  user.setN( num + di );
  if( frameCount % 5 == 0 ) di = di + dii;
}

//キーボードのキーが離されたときの処理(押し続けても毎フレーム離される)
void keyReleased() {
  Unit user = unit.get( 0 );
  switch( key ) { //特定のキーにおいて以下実行
    case 'w': case 's': v.y = 0.0; user.setN( this.d ? 4 : 0 ); break; //w,s が離されたら上下方向の速度を 0 に設定 
    case 'a': case 'd': v.x = 0.0;                              break; //a,d が離されたら上下方向の速度を 0 に設定
  }
}
