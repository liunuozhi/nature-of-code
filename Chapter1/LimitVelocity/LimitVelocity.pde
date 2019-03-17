Mover m;

void setup() {
    size(800, 800);
    m = new Mover();
    background(255);
}

void draw() {
    m.update();
    m.display();
}
