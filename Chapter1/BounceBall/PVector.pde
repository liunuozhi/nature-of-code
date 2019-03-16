class PVector{
    float x, y;

    PVector(float x_, float y_){
        x = x_;
        y = y_;
    }

    void add(PVector velocity){
        x += velocity.x;
        y += velocity.y;
    }

    void render(){
        float radius = 25;
        ellipse(x, y, radius, radius);
    }
}
