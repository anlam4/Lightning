void setup()
{
  size(600,600);
  strokeWeight(3);
  background(0);
  
  // Draws the crystal ball
  crystalBall();
  
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
  int endY = 360;
  int changeX = ((int)(Math.random()*21) - 10); // X-coordinate changes in one direction
  
  // Draws the lightning bolt
  while(endX > (300-(350/2)) && endX < (300+(350/2)) && endY < 525 && endY > (355-(350/2)))
  {
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    endX = endX + changeX;
    endY = endY + ((int)(Math.random()*21) - 10);
  }
}
void crystalBall() //do butterfly instead
{
  stroke(0);
  fill(96,55,11);
  rect(150,525,300,75,10);
  fill(210);
  ellipse(300,355,350,350);
}
void mousePressed()
{
  // Repeats drawing the lightning bolt every time the user clicks the screen
  redraw();
}

