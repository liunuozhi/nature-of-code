class Walker {
  int x,y;
  
  Walker(){
    //init point in the center
    x = width/2;
    y = height/2;
  }
  
  void render(){
    stroke(0, 50);
    point(x, y);
  }
  
  void walk(){
    int vx = int(random(-3,3));
    int yx = int(random(-3,3));
    x += vx;
    y += yx;
  }
  
}
