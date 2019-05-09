import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

ArrayList<Box> boxes;
Box2DProcessing box2d;

void setup() {
  size(800, 800);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  boxes = new ArrayList<Box>();
}

void draw() {
  background(255);

  Box p = new Box(mouseX, mouseY);
  boxes.add(p);

  for (Box b: boxes) {
    b.display();
  }
}
