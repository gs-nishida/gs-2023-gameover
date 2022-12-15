import java.util.List;
import java.util.Arrays;
import java.util.ArrayList;
import ddf.minim.*;

Minim minim;
AudioPlayer music;

List<Unit> unit;
List<Image> imgs;

String scene = "start";
int t, dt,id;
boolean d;
PImage image;


void setup(){
  loadImg();
  img();
  size( 1600, 900 );//画面サイズ
  textSize(50);//テキストの大きさ
  fill( 0 );
  
  PFont font = createFont("Meiryo", 50);//日本語入力文字化けならないように
  textFont(font);//↑
  
  /*
  minim = new Minim( this );
  music = minim.loadFile( "bgm.mp3" );
  music.loop();
  */
  
}

void draw(){
  battle_set();
  
  if(scene == "start") start_scene();  //タイトル画面　→　画面移動　→　メニュー画面
  else if( scene == "change" ) change_scene();//画面黒くするやつ
  else if( scene == "menu" ) menu_scene(); //メニュー画面を呼び出し
  else if( scene == "battle" ) battle_scene(); //メニュー画面　→　戦闘画面
  else if( scene == "option" ) option_scene(); //メニュー画面　→　オプション画面
  else if( scene == "store" ) store_scene(); //　メニュー画面　→　商店
  else if( scene == "clear" ) clear_scene();  // 呼び出し
  
}
