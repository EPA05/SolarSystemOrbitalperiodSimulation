class Sun {
  float radius; //Pixel radius of the planet
  float mass; //Mass of the sun

  Sun(float r) {
    radius = r;
    mass = 1.99e30;
  }

  void show() {
    fill(255, 128, 0);
    ellipse(0, 0, radius*2, radius*2);
  }
} 
