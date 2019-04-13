import java.util.Iterator;

class ParticleSystem {
    ArrayList<Particle> particles;

    ParticleSystem(){
        particles = new ArrayList<Particle>();
    }

    void add(){
        particles.add(new Particle(mouseX, mouseY, 10));
    }

    void run(){
        Iterator<Particle> it = particles.iterator();
        while (it.hasNext()) {
            Particle p = it.next();
            p.run();
            if (p.isDead()){
                it.remove();
            }
        }
    }
}
