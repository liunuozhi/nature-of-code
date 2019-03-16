Walker w;

void setup() {
    size(800, 800);
    background(255);
    w = new Walker();
}

void draw() {
    w.walk();
    w.render();
}
