// Points tend to go to right corner.

Walker w;

void setup() {
    size(400, 400);
    background(255);
    w = new Walker();
}

void draw() {
    w.walk();
    w.render();
}
