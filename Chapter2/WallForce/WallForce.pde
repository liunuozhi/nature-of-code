Mover[] movers = new Mover[100];

void setup() {
    size(800, 800);

    for (int i=0; i<movers.length; i++) {
        movers[i] = new Mover(random(0, 800), random(0, 800), random(1, 30));
    }
}

void draw() {
    background(255);
    PVector wind = new PVector(0.5, 0);
    PVector g = new PVector(0, 10);

    for (Mover m: movers){
        if (mousePressed) {
            m.applyForce(wind);
        }

        m.applyForce(g);

        m.update();
        m.checkEdge();
        m.display();
    }

}
