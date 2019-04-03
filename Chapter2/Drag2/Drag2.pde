Mover [] movers = new Mover[10];
Box box;

void setup() {
  size(800, 800);
  for (int i=0; i<movers.length; i++) {
    movers[i] = new Mover(random(0, width), 0, random(20, 100));
  }

  box = new Box(0, height*0.5, width, height);
}

void draw() {
  background(255);
  box.display();

  for (Mover mover: movers) {
    PVector g = new PVector(0, 1);
    mover.applyForce(g);
    mover.drag(box);
    mover.update();
  }
}
