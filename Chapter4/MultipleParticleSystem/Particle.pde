class Particle{
  PVector location, velocity, acceleration;
  float mass;
  int lifespan;
  boolean life = true;

  Particle(float x_, float y_){
    location = new PVector(x_, y_);
    velocity = new PVector();
    acceleration = new PVector();
    mass = 10;
    lifespan = 255; // alpha channel maximum
  }

  void run(){
    PVector g = new PVector(0, -5);
    PVector f = new PVector(random(-10, 10), random(-10, 10));

    this.applyForce(g);
    this.applyForce(f);
    this.update();
    this.display();
  }

  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 5; // set reduce rate to 5
    acceleration.mult(0); // initialize acceleration
  }

  void applyForce(PVector force){
    acceleration.add(force.div(mass));
  }

  void display(){
    noStroke();
    fill(255, lifespan);
    ellipse(location.x, location.y, mass, mass);
  }

  boolean isDead(){
    life = (lifespan < 0) ? true : false;
    return life;
  }
}