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
    text(str(vel.mag()), loc.x, loc.y);
    this.display();
  }

  void display(){
    noStroke();
    fill(0, 40);
    ellipse(loc.x, loc.y, mass, mass);
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

  void drag(Box box){
    PVector dragForce;
    float k, drag, currentSpeed; // 阻力系数
    k = 0.2;
    currentSpeed = vel.get().mag();
    drag = k * currentSpeed * currentSpeed;
    dragForce = PVector.mult(vel, -1 * drag);

    if (box.isInside(loc)) {
      this.applyForce(dragForce);
    } 
  }
}
