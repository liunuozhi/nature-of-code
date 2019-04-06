PVector c1;
float r;

void setup() {
    size(800, 800);
    background(255);
    c1 = new PVector(width/2, height/2);
    r = 200;
    frameRate(10);
}

void draw() {
    
    for (int angle=0; angle<360; angle++){
        
        pushMatrix();
        translate(c1.x, c1.y);
        rotate(radians(angle));
        stroke(155, 10);
        noFill();
        line(0, 0, r, r);
        ellipse(0, 0, 30, 30);
        ellipse(r, r, 50, 50);
        popMatrix();
    }
}
