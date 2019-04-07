float length, amp, angle;

void setup() {
    size(800, 800);
    length = 200;
    amp = 100;
    angle = 0;
}

void draw() {
    background(255);
    translate(width/2, length);
    float y = map(sin(angle), -1, 1, -amp, amp);
    angle += 0.1;
    line(0, -height/2, 0, y);
    ellipse(0, y, 20, 20);
}
