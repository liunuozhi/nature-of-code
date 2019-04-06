PVector dir, loc;
float angle, aVel, v;

void setup() {
    size(800, 800);
    
    loc = new PVector(width/2, height/2);
    dir = new PVector(0, v);
    angle = 0;
    aVel = 0.1;
    v = 25;
}

void draw() {
    background(255);
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(angle);
    fill(155);
    // rect(0, 0, 50, 50);
    triangle(0, 15, 50, 0, 0, -15);
    popMatrix();
}

void keyPressed(){
    if (keyCode == UP) {
        loc.add(dir);
    } else if (keyCode == RIGHT) {
        angle += aVel;
        dir.x = v * cos(angle);
        dir.y = v * sin(angle);
    } else if (keyCode == LEFT) {
        angle -= aVel;
        dir.x = v * cos(angle);
        dir.y = v * sin(angle);
    }
}