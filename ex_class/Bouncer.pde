class Bouncer
{
  float x, y;
  int size;
  color c;
  float xSpeed, ySpeed;
  boolean gameStart = false;
  int leng;
  Bouncer()
  {
    x=mouseX;
    y=685;
    xSpeed = -2.5;
    ySpeed = -4;
    size = 25;
    c= color(255, 0, 255);
  }

  void Bounce()
  {
    col=color(255, 0, 255);
    if (y > 800)  text("End", 400, 400);
    else if (y < 0)    ySpeed = ySpeed * -1;
    else if (x < 0)    xSpeed = xSpeed * -1;
    else  if (x > 800)  xSpeed = xSpeed * -1;
    else if (mouseX+leng>x && y<710 && y>690 && mouseX-leng<x) 
    {
      xSpeed = map(x, mouseX-leng, mouseX+leng, -10, 10);
      ySpeed = ySpeed*-1;
    }
    else  col=color(255);
  }
  void Draw()
  {

    stroke(0);
    strokeWeight(0);
    fill(c);
    if (gameStart)  ellipse(x, y, size, size);
    else           ellipse(mouseX, 685, size, size);
  }
  void Move()
  {
    if (gameStart)
    {
      x = x + xSpeed;
      y = y + ySpeed;
    }
  }
}
