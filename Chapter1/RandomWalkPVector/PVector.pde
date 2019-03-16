class PVector{
    float x,y;

    PVector(float x_, float y_) {
        x = x_;
        y = y_;
    }

    void add(PVector velocity) {
        x += velocity.x;
        y += velocity.y;
    }
}