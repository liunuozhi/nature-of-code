// random walker following mouse
class Mover{
  PVector loc; // walker location
  PVector acc; // walker current acceleration
  PVector dir; // vector between walker and cursor
  PVector cursor;

  Mover(){
    loc = new PVector(width/2, height/2);
    acc = new PVector(random(-1, 1), random(-1, 1));
  }

  void update(){
    cursor = new PVector(mouseX, mouseY);
    dir = PVector.sub(cursor, loc);
    acc = dir.div(100);
    println("acc: "+acc.mag());
    loc.add(acc);
    loc.add(dir);
  }

  void display(){
    fill(0, 30);
    noStroke();
    ellipse(loc.x, loc.y, 15, 15);
  }

}
