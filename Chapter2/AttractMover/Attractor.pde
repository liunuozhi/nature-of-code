class Attractor{
  PVector loc;
  float mass;

  Attractor(float x_, float y_, float mass_){
    loc = new PVector(x_, y_);
    mass = mass_;
  }

  void display(){
    noStroke();
    fill(255, 0, 0);
    ellipse(loc.x, loc.y, mass, mass);
  }
}
