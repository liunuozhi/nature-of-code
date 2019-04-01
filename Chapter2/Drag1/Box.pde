class Box {
  float x, y, h, w;
  Box(float x_, float y_, float w_, float h_){
    x = x_;
    y = y_;
    h = h_;
    w = w_;
  }

  void display(){
    noStroke();
    fill(0, 0, 255, 30);
    rect(x, y, w, h);
  }
  
  boolean isInside(PVector loc){
    if ( loc.x > x && loc.x < x + w && loc.y > y && loc.y < y + h) {
      return true;
    } else {
      return false;
    }
  }

}
