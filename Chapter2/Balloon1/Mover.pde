class Mover{
    PVector loc;
    PVector acc;
    PVector vel;
    float mass;

    Mover(){
        loc = new PVector(width/2, height - 20);
        vel = new PVector(0, 0);
        acc = new PVector(0, 0);
        mass = 1;
    }
    
    void update(){
        this.checkEdge();
        vel.add(acc);
        loc.add(vel);
        acc.mult(0);
        
    }

    void display(){
        noStroke();
        fill(0, 30);
        ellipse(loc.x, loc.y, 16, 16);
    }

    void applyForce(PVector force){
        PVector f = force.get(); // make copy of force, not assign to f.
        f.div(mass);
        acc.add(f);
    }

    void checkEdge(){
        if (loc.y > height || loc.y < 0) {
            vel.y *= -1;
        }

        if (loc.x > width || loc.x < 0) {
            vel.x *= -1;
        }
    }

}
