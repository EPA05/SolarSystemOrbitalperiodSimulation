Sun sun;
Planet[] planets;

void setup() {
  size(1920, 1080);
  sun = new Sun(30); 
  planets = new Planet[8];

  //Mercury
  planets[0] = new Planet(5, 62, 5.79e10, color(112, 128, 144));
  
  //Venus
  planets[1] = new Planet(8, 73, 1.08e11, color(255,198,73));
  
  //Earth
  planets[2] = new Planet(20, 81, 1.50e11, color(0, 0, 255));
  
  //Mars
  planets[3] = new Planet(20, 150, 2.28e11, color(156, 46, 53));
  
  //Jupiter
  planets[4] = new Planet(20, 200, 7.78e11, color(176, 127, 53));
  
  //Saturn  
  planets[5] = new Planet(20, 300, 1.4e12, color(253, 229, 34));
  
  //Uranus
  planets[6] = new Planet(20, 400, 3.00e12, color(178, 214, 219));
  
  //Neptune
  planets[7] = new Planet(20, 500, 4.5e12, color(142, 195, 195));
  
  frameRate(24);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  sun.show();
  for(Planet p : planets){
   p.orbit(sun, p.distance);
   p.show();
  }
}
