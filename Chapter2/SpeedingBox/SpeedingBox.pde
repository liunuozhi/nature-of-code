Mover []movers = new Mover[5];

void setup() {
    size(800, 800);
    for (int i=0; i<movers.length; i++){
        float x = random(0, width);
        float y = random(0, height);
        float mass = random(10.0, 30.0);
        movers[i] = new Mover(x, y, mass);
        
    }
}

void draw() {
    
    background(255);
    PVector wind = new PVector(0.5, 0);
    PVector g = new PVector(0, 10.0); 

    for(Mover mover: movers) {

        mover.applyForce(wind);
        mover.applyForce(g);
        mover.update();
        mover.display();
    }
}
