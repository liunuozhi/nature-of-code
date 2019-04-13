class Particle {
    PVector location, velocity, acceleration;
    float mass;
    float lifespan;

    Particle(float x, float y, float mass_) {
        location = new PVector(x, y);
        velocity = new PVector();
        acceleration = new PVector();
        mass = mass_;
        lifespan = 255;
    }

    void run(){
        PVector g = new PVector(0, 5);
        PVector force = new PVector(random(-10, 10), random(-10, 10));

        this.applyForce(g);
        this.applyForce(force);
        this.update();
        this.display();        
    }

    void applyForce(PVector f) {
        acceleration.add(f.div(mass));
    }

    void update() {
        velocity.add(acceleration);
        location.add(velocity);
        acceleration.mult(0);
        lifespan -= 5;
    }

    void display() {
        noStroke();
        fill(0, lifespan);
        ellipse(location.x, location.y, mass, mass);
    }

    boolean isDead(){
        boolean life = (lifespan < 0) ? true : false;
        return life;
    }
}
