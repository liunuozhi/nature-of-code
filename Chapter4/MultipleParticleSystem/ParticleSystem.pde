import java.util.Iterator;

class ParticleSystem{
  ArrayList<Particle> ps;
  float x, y;

  ParticleSystem(float x_, float y_){
    ps = new ArrayList<Particle>();
    x = x_;
    y = y_;
  }

  void add(){
    float seed = random(0, 1);
    if (seed < 0.4) {
      ps.add(new Particle(x, y));
    } else {
      ps.add(new SquareParticle(x, y));
    }
    
  }

  void run(){
    Iterator<Particle> it = ps.iterator();
    while (it.hasNext()){
      Particle particle = it.next();
      particle.run();
      if (particle.isDead()) {
        it.remove();
      }
    }
  }

}