class Mover {
  PVector loc, vel, acc;
  float mass;

  Mover(float x, float y, float m){
    mass = m;
    loc = new PVector(x, y);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
  }

  void update(){
    this.checkEdge();
    vel.add(acc);
    loc.add(vel);
    acc.mult(0);
    // text(str(vel.mag()), loc.x, loc.y);
    this.display();
  }

  void display(){
    // noStroke();
    // fill(0, 40);
    // ellipse(loc.x, loc.y, mass, mass);
    // rect(loc.x, loc.y, mass, mass);
    stroke(255, 70);
    point(loc.x, loc.y);
  }

  void applyForce(PVector f){
    PVector force = PVector.div(f, mass);
    acc.add(force);
  }

  void checkEdge(){
    if (loc.x < 0) {
      vel.x *= -1;
      loc.x = 0;
    } else if (loc.x > width) {
      vel.x *= -1;
      loc.x = width;
    }

    if (loc.y < 0) {
      vel.y *= -1;
      loc.y = 0;
    } else if (loc.y > height) {
      vel.y *= -1;
      loc.y = height;
    }
  }

  void attract(Attractor a){
    // F = (G * mass1 * mass2) / (distance * distance)
    // assume G = 1
    PVector dir = PVector.sub(a.loc, loc);
    PVector direction = dir.get().normalize();
    float distance = dir.get().mag();
    distance = constrain(distance, 5.0, 25.0); // in case distance too close or too far

    float f = (mass * a.mass ) / (distance * distance);
    this.applyForce(direction.mult(f));
  }
}
