ParticleSystem ps;

void setup() {
    size(800, 800);
    ps = new ParticleSystem();
}

void draw() {
    background(255);
    ps.add();
    ps.run();
}
