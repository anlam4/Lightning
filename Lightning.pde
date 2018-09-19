int startX = 0;
int startY = 150;
int endX= 0;
int endY = 150;

void setup()
{
  size(600,600);
  strokeWeight(3);
  background(0);
  // noLoop();
}
void draw()
{
  crystalBall();
  // Provides a range of random colors
  int red = (int)(256 * Math.random());
  int blue = (int)(256 * Math.random());
  int green = (int)(256 * Math.random());
  stroke(red, blue, green);

}
// Draws the crystal ball
void crystalBall()
{
  stroke(0);
  fill(96,55,11);
  rect(150,525,300,75,10);
  fill(210);
  ellipse(300,355,350,350);
}
void mousePressed()
{
  // redraw()
}
