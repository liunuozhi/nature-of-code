Mover mover;

void setup() {
    size(800, 800);
    background(0);
    mover = new Mover(50, height-50, 30);
    PVector shooting = new PVector(100, -600);
    mover.applyForce(shooting);
}

void draw() {
    PVector g = new PVector(0, 10);
    
    mover.applyForce(g);
    mover.update();
}
