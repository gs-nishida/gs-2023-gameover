class Image {
    int id;
    PImage img;
    int x, y, w, h;
    Image( int id, PImage img, int x, int y, int w, int h ) {
      this.id = id;
      this.img = img; 
      this.x = x; this.y = y; this.w = w; this.h = h;
      // this.img.resize( w, h );
    }
    int getID() { return this.id; }
    int getX()  { return this.x;  }
    int getY()  { return this.y;  }
    int getW()  { return this.w;  }
    int getH()  { return this.h;  }
    
    PImage getImage() { return this.img.copy(); }
    
    void show() {
      image( this.img, this.x, this.y, this.w, this.h );
    }
  }
