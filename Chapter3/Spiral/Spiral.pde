float r = 15;
float theta = 0;

void setup() {
    size(800, 800);
    background(255);
    smooth();
}

void draw() {
    float x = r * cos(theta);
    float y = r * sin(theta);

    translate(x, y);
    noStroke();
    fill(0);
    ellipse(width/2, height/2, 15, 15);
    
    r += 0.1;
    theta += 0.01;
}
