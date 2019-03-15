// Gaussian ditribution

void setup() {
  size(800, 200);
  background(255);
}

void draw() {
  float gaussianNum = randomGaussian(); // Gaussian number
  float x = gaussianNum * width / 2;
  final float y = height / 2;
  int circleRadius = 15;

  noStroke();
  fill(0, 30);
  ellipse(x, y, circleRadius, circleRadius);
}
