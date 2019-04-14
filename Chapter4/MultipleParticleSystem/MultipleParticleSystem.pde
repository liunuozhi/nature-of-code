ArrayList<ParticleSystem> pslist;

void setup() {
  size(800, 800);
  pslist = new ArrayList<ParticleSystem>();
}

void draw() {
  background(0);
  for (ParticleSystem ps: pslist) {
    ps.add();
    ps.run();
  }
}

void mousePressed() {
  pslist.add(new ParticleSystem(mouseX, mouseY));
}
