class Mover{
    PVector loc, vel, acc;
    float mass;
    PVector corner;
    int w, h;
    float speed;
    
    Mover(float x, float y, float m){
        int boxCornerX=width/2;
        int boxCornerY=height/2;
        int boxWidth=300;
        int boxHeight=300;
        float boxSpeed = 8.5;


        loc = new PVector(x, y);
        vel = new PVector(0, 0);
        acc = new PVector(0, 0);
        corner = new PVector(boxCornerX, boxCornerY);
        w = boxWidth;
        h = boxHeight;
        speed = boxSpeed;
        mass = m;
    }

    void update(){
        this.speedingBox(w, h, corner, speed);
        this.checkEdge();
        vel.add(acc);
        loc.add(vel);
        acc.mult(0);
    }
    
    void display(){
        stroke(155);
        fill(155, 50);
        ellipse(loc.x, loc.y, mass, mass);
    }

    void checkEdge(){
        if (loc.x < 0) {
            loc.x = 0;
            vel.x *= -1;
        } else if (loc.x > width) {
            loc.x = width;
            vel.x *= -1;
        }

        if (loc.y < 0) {
            loc.y = 0;
            vel.y *= -1;
        } else if (loc.y > height) {
            loc.y = height;
            vel.y *= -1;
        }
    }

    void applyForce(PVector f){
        PVector force = PVector.div(f, mass);
        acc.add(force);
    }

    void speedingBox(float w, float h, PVector corner, float speed){
        // draw speeding box boundary
        noFill();
        stroke(0, 255, 0);
        rect(corner.x, corner.y, w, h);

        // if circle cross speeding box, apply force to speed up
        if (loc.x > corner.x 
        && loc.x < corner.x + w
        && loc.y > corner.y
        && loc.y < corner.y + h) {
            acc.mult(speed);
        } 
    }
}
