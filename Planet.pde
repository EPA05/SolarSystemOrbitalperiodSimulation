class Planet {
  float radius; //Pixel radius of the planet
  float pixelDistance; // Pixel distance from planet to sun
  color colour; //Colour of the planet
  float distance; //Distance to sun
  float angle; //Radians
  float orbitAngularVelocity; //Radians per day
  float orbitalPeriod; // Seconds per orbital period
  int time; //Time per frame
  static final float G = 6.67e-11; //Gravitational constant. Units: (N*m^2)/kg^2


  Planet(float r, float pd, float d, color c) {
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

  void orbit(Sun sun, float d) {
    //Calculate the orbital period for the planet
    orbitalPeriod = TWO_PI*(sqrt(pow(d, 3)/(G*sun.mass)));

    time = 60*60*24; // Time per frame is set to one day

    //Calculate the orbital angular velocity
    orbitAngularVelocity = (TWO_PI/orbitalPeriod)*time;
    angle = angle + orbitAngularVelocity;
  }
}
