
class Planet {
  int radius; //Pixel radius of the planet
  int pixelDistance; //Pixel distance from planet to sun
  color colour; //Colour of the planet
  float distance; //Distance to sun
  float angle; //Radians
  float orbitAngularVelocity; //Radians per day
  float orbitalPeriod; //Seconds per orbital period
  int time; //Time per frame
  static final float G = 6.67e-11; //Gravitational constant. Units: (N*m^2)/kg^2

  Planet(int r, int pd, float d, color c) {
    radius = r;
    pixelDistance = pd;
    distance = d;
    colour = c;
  }

  void show() {
    //Uses matrix to reset the translate function
    pushMatrix();
    fill(colour);
    rotate(angle);
    ellipse(pixelDistance, 0, radius*2, radius*2);

    popMatrix();
  }

  void orbit(Sun sun, float distance, Slider slider) {
    //Calculate the orbital period for the planet
    orbitalPeriod = TWO_PI*(sqrt(pow(distance, 3)/(G*sun.mass)));

    // Calculate the time based on slider output
    time = (60*60*24*int(slider.time))/24;

    //Calculate the orbital angular velocity
    orbitAngularVelocity = (TWO_PI/orbitalPeriod)*time;
    angle = angle + orbitAngularVelocity;
  }
}
