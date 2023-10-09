Sun sun;
Planet mercury;

void setup() {
  size(1920, 1080);
  sun = new Sun(50); 
  mercury = new Planet(15, 100, 5.79e10, color(112, 128, 144));
  frameRate(24);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  sun.show();
  mercury.show();
  mercury.orbit(sun, mercury.distance);
  println(frameRate);
}
