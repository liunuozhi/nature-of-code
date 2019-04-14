class SquareParticle extends Particle {
    SquareParticle(float x_, float y_) {
        super(x_, y_);
    }

    void display(){
        noStroke();
        fill(random(0, 255), 0, 0, this.lifespan);
        rectMode(CENTER);
        rect(this.location.x, this.location.y, this.mass, this.mass);
    }
}