class Walker{
  int x, y;
  
  Walker(){
    // init x, y location
    x = width / 2;
    y = height /2 ;
  }
  
  void render(){
    stroke(0);
    point(x, y);
  }
  
  void walk(){
    float seed; // (0, 1), set probability
    seed = random(0, 1);
    println(seed);

    x = (seed < 0.4) ? x - 1 : x + 1;
    y = (seed > 0.6) ? y - 1 : y + 1;
  }
}
