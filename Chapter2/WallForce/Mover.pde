class Mover{
    PVector loc, vel, acc;
    float mass;
    Mover(float x, float y, float m){
        loc = new PVector(x, y);
        vel = new PVector(0, 0);
        acc = new PVector(0, 0);
        mass = m;
    }

    void applyForce(PVector force){
        // A = F/M
        PVector f = PVector.div(force, mass);
        acc.add(f);
    }
    
    void update(){
        vel.add(acc);
        loc.add(vel);
        acc.mult(0);
    }

    void checkEdge(){
        final float scaler = 500.0;
        
        if ((loc.x > width) || (loc.x < 0)) {
            vel.x = -vel.x;
        }
        if ((loc.y > height) || (loc.y < 0)) {
            vel.y = -vel.y;
        }

        if (min(loc.x, width - loc.x) == loc.x) {
            // left force
            loc.x += (width - loc.x) / scaler;
        } else {
            // right force
            loc.x -= loc.x / scaler;
        }

        if (min(loc.y, height - loc.y) == loc.y) {
            //top force
            loc.y += (height - loc.y) / scaler;
        } else {
            // bottom force
            loc.y -= loc.y / scaler;
        }
    }

    void display(){
        stroke(0);
        fill(150, 50);
        ellipse(loc.x, loc.y, mass, mass);
    }
}
