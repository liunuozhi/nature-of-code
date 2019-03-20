Mover mover;
float xoff;

void setup() {
    size(800, 800);  
    xoff = 0.0;
    mover = new Mover();
}

void draw() {
    background(255);
    // if mousePressed, as time changed, use perlin noise as PVector input
    if (mousePressed) {
        xoff += 0.01;
        println(xoff);
        PVector wind = new PVector(noise(xoff), 0);
        mover.applyForce(wind);
    }

    PVector g = new PVector(0, -0.1);
    mover.applyForce(g);
    mover.update();
    mover.display();

};
