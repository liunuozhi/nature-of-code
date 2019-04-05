Mover [] movers = new Mover[10];
Attractor [] attractors =  new Attractor[4];

void setup() {
  size(800, 800);
  background(0);
  smooth();
  for (int i=0; i< movers.length; i++) {
    movers[i] =  new Mover(random(0, width), random(0, height), random(10, 50));
  }
  for (int i=0; i<attractors.length; i++) {
    attractors[i] =  new Attractor(random(0, width), random(0, height), random(10, 50));
  }
  
}

void draw() {
  
  // attractor = new Attractor(mouseX, mouseY, 30);
  // attractor.display();


  for (Mover mover: movers){
    for (Attractor attractor: attractors) {
      attractor.display();
      mover.attract(attractor);
      mover.checkEdge();

    }
    mover.update();
    mover.display();    
  }
}
