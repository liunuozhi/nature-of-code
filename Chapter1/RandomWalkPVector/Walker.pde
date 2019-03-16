class Walker{
    PVector location;

    Walker(){
        location = new PVector(width/2, height/2);
    }

    void render(){
        stroke(0);
        point(location.x, location.y);
    }

    void walk(){
        PVector v = new PVector(random(-3, 3), random(-3, 3));
        location.x += v.x;
        location.y += v.y;
    }
}
