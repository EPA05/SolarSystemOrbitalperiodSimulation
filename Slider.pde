class Slider {
  int x, y; //Coordinates of the slider
  int sliderHeight; //Height of slider
  int sliderWidth; // width of slider
  float time; //Time value 
  float timePixelConstant; //Constant to map pixels to time unit
  int barX, barY; //Coordinates of the bar
  int barHeight; //Height of the bar
  int barWidth; //Width of the bar

  Slider() {
    x = 100;
    y = 50;
    sliderHeight = 30;
    sliderWidth = 10;
    barX = 100;
    barY = 50;
    barHeight = 30;
    barWidth = 200;
  }

  void show() {
    fill(0, 120, 255);
    rect(barX, barY, barWidth, barHeight, 15);
    fill(255);
    rect(x, y, sliderWidth, sliderHeight, 15);
    textSize(20);
    text("1 Day", 40, 70);
    textSize(24);
    text("365 Days", 320, 70);
    text("Days passed per second: " + int(time), 100, 30);
    
  }

  void mousePressed() {
    if (mousePressed == true)
    //Checks if the mouse is inside my sliders boundaries
      if (mouseX > barX && mouseX < barX+barWidth-sliderWidth && mouseY > barY && mouseY < barY+sliderHeight) {
        x = mouseX; //Sets the position of the slider to the mouse
      }
  }
  
  void calculateTime(){
    timePixelConstant = 366.0/190.0; //Calculate how many days each pixel is worth
    time = (x-100)*timePixelConstant+1; //Calculate time based on slider position
  }
}
