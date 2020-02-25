int squares=13;
boolean longer=false;
int y=80;
int y1 = 80;
color col=color(255);
Bouncer myBounce = new Bouncer();
Square[][] mySquare = new Square[squares][2];
Item myItem = new Item();

void setup()
{
  size(800, 800);
  myBounce.leng = 50;

  for (int i =0; i < squares; i++)
  {
    for (int j=0; j<2; j++)
    {
      mySquare[i][j] = new Square( i*60+20, j*30+40);
    }
  }
}

void draw()
{
  background(0);

  myBounce.Draw();
  myBounce.Move();
  myBounce.Bounce();
  for (int i=0; i<squares; i++)
  {
    for (int j=0; j<2; j++)
    {
      mySquare[i][j].touch(myBounce);
      mySquare[i][j].Draw();
    }
  }
  myItem.longer(mySquare[8][1], myBounce);
  myItem.faster(mySquare[2][1], myBounce);
  strokeWeight(10);
  stroke(col);
  line(mouseX-myBounce.leng, 700, mouseX+myBounce.leng, 700);
}

void mouseClicked()
{
  if (myBounce.gameStart == false)
  {
    myBounce.gameStart = true;
    myBounce.x = mouseX;
  }
}
