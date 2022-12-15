PImage start, menu;
PImage start_button, store_button, end_button, option_button;
PImage shopback;
List<PImage> enemy;
List<PImage> player;

void loadImg(){
  start = loadImage( "\\data\\background\\start1.png" );//
  menu = loadImage( "\\data\\background\\menu.PNG" );
  
}

void img(){
  this.enemy = new ArrayList<PImage>();
  this.player = new ArrayList<PImage>();
  
  File file = new File( sketchPath() +  "\\data\\player" );
  for( var f : file.listFiles() )
    this.player.add( loadImage( f.getAbsolutePath() ) );
    
  file = new File( sketchPath() +  "\\data\\enemy" );
  for( var f : file.listFiles() )
    this.enemy.add( loadImage( f.getAbsolutePath() ) );
    
  for( var enemy : this.enemy ) enemy.resize( 100, 100 );
  for( var player : this.player ) player.resize( 100, 100 );
  
}

void menu_img(){
  start_button = loadImage( "\\data\\button\\start.PNG" );   start_button.resize( 280, 160 );
  store_button = loadImage( "\\data\\button\\store.PNG" );   store_button.resize( 280, 160 );
  end_button = loadImage( "\\data\\button\\end.PNG" );       end_button.resize( 280, 160 );
  option_button = loadImage( "\\data\\button\\option.PNG" ); option_button.resize( 280, 160 ); 
}

void shop_img(){
  shopback = loadImage("\\data\\shop\\background.PNG" );
  
}
