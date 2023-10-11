class Slider {
  int x, y; //Coordinates of the slider
  int height; //Height of slider
  int width; // width of slider
  float time; //Time value 
  float timePixelConstant; //Constant to map pixels to time unit

  Slider() {
    x = 100;
    y = 50;
    height = 30;
    width = 10;
  }

  void show() {
    fill(0, 120, 255);
    rect(100, 50, 200, 30, 15);
    fill(255);
    rect(x, y, width, height, 15);
    textSize(20);
    text("1 Day", 40, 70);
    textSize(24);
    text("365 Days", 320, 70);
    text("Days passed per second: " + int(time), 100, 30);
    
  }

  void mousePressed() {
    if (mousePressed == true)
    //Checks if the mouse is inside my sliders boundaries
      if (mouseX > 100 && mouseX < 290 && mouseY > 50 && mouseY < 80) {
        x = mouseX; //
      }
  }
  
  void calculateTime(){
    timePixelConstant = 366.0/190.0; //Calculate how many days each pixel is worth
    time = (x-100)*timePixelConstant+1; //Calculate time based on slider position
  }
}
