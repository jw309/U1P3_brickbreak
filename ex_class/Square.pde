class Square
{
  int x;
  int y;
  boolean touched;
  float ballx;
  float bally;

  Square()
  {
    x = 400;
    y=400;
  }

  Square(int _x, int _y)
  {
    x=_x;
    y=_y;
  }

  void Draw()
  {
    if (touched==false)
    {  
      fill(#CB9844);
      rect(x, y, 40, 20);
    }
  }

  void touch(Bouncer B)
  {  
    bally = B.y;
    ballx = B.x;
    if (touched == false)
    {
      if (bally>y && bally<y+15 && ballx>x && ballx<x+40)
      {
        B.ySpeed = B.ySpeed * -1;
        touched=true;
      }
      if (bally<y && bally>y-15 && ballx>x && ballx<x+40)
      {
        B.ySpeed = B.ySpeed * -1;
        touched=true;
      }
    }
  }
  /*boolean touch(CircleType circle, RectType rect)
   {
   circleDistance.x = abs(circle.x - rect.x);
   circleDistance.y = abs(circle.y - rect.y);
   
   if (circleDistance.x > (rect.width/2 + circle.r)) { 
   return false;
   }
   if (circleDistance.y > (rect.height/2 + circle.r)) { 
   return false;
   }
   
   if (circleDistance.x <= (rect.width/2)) { 
   return true;
   } 
   if (circleDistance.y <= (rect.height/2)) { 
   return true;
   }
   
   cornerDistance_sq = (circleDistance.x - rect.width/2)^2 +
   (circleDistance.y - rect.height/2)^2;
   
   return (cornerDistance_sq <= (circle.r^2));
   }*/
}
