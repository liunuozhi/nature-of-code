PVector location;
PVector velocity;

void setup() {
  size(200, 200);
  location = new PVector(0, 0);
  velocity = new PVector(2.5, 1);
}

void draw() {
  background(255);
  location.add(velocity);
  location.render();

  // bounce
  if (location.x < 0 || location.x > width) {
    velocity.x *= -1;
  }
  if (location.y < 0 || location.y > height) {
    velocity.y *= -1;
  }
}
