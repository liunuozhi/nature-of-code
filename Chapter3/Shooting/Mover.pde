class Mover {
  PVector loc, vel, acc;
  float mass;
  float aAcc, aVel, aAngle;

  Mover(float x, float y, float m){
    mass = m;
    loc = new PVector(x, y);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);

    aAcc = 10;
    aVel = 0;
    aAngle = 0;
  }

  void update(){
    this.checkEdge();
    vel.add(acc);
    loc.add(vel);
    this.angleSpeed();
    this.display();
    acc.mult(0); // init acc
  }

  void display(){
    
    noStroke();
    fill(255, 40);
    // ellipse(loc.x, loc.y, mass, mass);
    rectMode(CENTER);
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(aAngle);
    rect(0, 0, mass, mass);
    popMatrix();
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


  void angleSpeed(){
    aVel += aAcc;
    aAngle = radians(aAngle + aVel);
  }
}
