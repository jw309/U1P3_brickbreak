class Item
{
  boolean ball1=true;
  void longer(Square S, Bouncer B)
  {
    if (S.touched == true)
    {
      if (y<705&&y>695&&(mouseX-B.leng)<22+60*8&&(mouseX+B.leng)>22+60*8)
      {
        B.leng = 150;
      } else
      {
        strokeWeight(0);
        fill(0, 255, 0);
        ellipse(25+60*8, y, 20, 20);
        fill(255, 0, 0);
        text("L", 22+60*8, y+2);
        y+=3;
      }
    } else 
    {
      fill(255, 0, 0);
      text("Long", 25+60*8, 85);
    }
  }
  void faster(Square S, Bouncer B)
  {
    if (ball1)
    {
      if (S.touched == true)
      {
        if (y1<705&&y1>695&&(mouseX-B.leng)<145&&(mouseX+B.leng)>145)
        {

          B.ySpeed*=2;
          B.xSpeed*=2;
          ball1=false;
        } else
        {
          if (ball1) 
          {
            strokeWeight(0);
            fill(0, 255, 0);
            ellipse(145, y1, 20, 20);
            fill(255, 0, 0);
            text("F", 143, y1+2);
            y1+=3;
          }
        }
      } else 
      {
        fill(255, 0, 0);
        //text("Fast", 145, 85);
      }
    }
  }
}
