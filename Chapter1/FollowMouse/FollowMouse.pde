Mover mover;

void setup() {
    size(800, 800);
    background(255);
    mover = new Mover();
}

void draw() {
    mover.update();
    mover.display();
}
