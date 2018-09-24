void setup()
{
  size(600,600);
  strokeWeight(3);
  background(0);
  
  // Draws the butterfly's body
  butterfly();
  
  // Stops the invisible while loop for draw()
  noLoop();
}
void draw()
{
  // Provides a range of random colors
  int red = (int)(256 * Math.random());
  int blue = (int)(256 * Math.random());
  int green = (int)(256 * Math.random());
  stroke(red, blue, green);
  
  // Initializes start and endpoints of line
  int startX = 300;
  int startY = 355;
  int endX= 295;
  int endY = 358;
  int changeX = ((int)(Math.random()*21) - 10); // X-coordinate changes 
                                                // in one direction
  
  // Sets limits for how far the lightning bolt can go
  // to make the wings more proportional to the butterfly's body
  int maxLimX = 295 + 200;
  int minLimX = 295 - 200;
  int maxLimY = 355 + (296/2);  
  int minLimY = 355 - (296/2);   
  
  
  // Draws the lightning bolt
  while(endX > minLimX && endX < maxLimX && endY > minLimY && endY < maxLimY )
  {
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    endX = endX + changeX;
    endY = endY + ((int)(Math.random()*21) - 10);
  }
}
void butterfly()
{
  stroke(0);
  fill(96,55,11);
  ellipse(295,355,100,296);
  stroke(96,55,11);
  line(290,210,230,150);
  line(300,210,360,150);
  ellipse(230,150,20,20);
  ellipse(360,150,20,20);
}
void mousePressed()
{
  // Repeats drawing the lightning bolt every time the user clicks the screen
  redraw();
}

