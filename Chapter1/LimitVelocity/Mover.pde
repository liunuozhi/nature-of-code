class Mover{
    PVector loc;
    PVector vel;
    PVector acc;

    Mover(){
        loc = new PVector(width/2, height/2);
        vel = new PVector(random(-2, 2), random(-2, 2));
    }

    //acceleration
    void update(){
        acc = new PVector(random(-2, 2), random(-2, 2));
        this.checkEdge();
        this.limit();
        loc = loc.add(vel);
        vel = vel.add(acc);
        println("currentVel: "+vel.mag());
    }

    // check loc inside of window
    void checkEdge(){
        if (loc.x > width) {
            loc.x = 0;
        } else if (loc.x < 0) {
            loc.x = width;
        }

        if (loc.y > height) {
            loc.y = 0;
        } else if (loc.y < 0) {
            loc.y = height;
        }
    }

    // limit the velocity smaller than 10
    void limit(){
        if (vel.mag() > 10) { vel.normalize(); }
    }

    void display(){
        ellipse(loc.x, loc.y, 15, 15);
        fill(0, 30);
    }
}
