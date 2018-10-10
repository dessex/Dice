
void setup()

{
  size (1000, 1000);
  noLoop();
  
}


void draw()
{
  background(0);
  for (int v=0; v<10; v++) {
    for (int w=0; w<10; w++){
    Die bob = new Die(v*100,w*100);
    bob.show();
    }
  }
}


void mousePressed()
{
  redraw();
}

class Die //models one single dice cube

{

  int myY;
  int myX;
  int Num;

  Die(int x, int y) //constructor

  {
    myY= y;
    myX= x;
    roll();
  }

  void roll()
  {

    Num = (int)(Math.random()*6)+1;
  }

  void show() {

    if (Num==1) {
      fill(255, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
      rect(myX, myY, 100, 100);
      fill(3, 3, 3);
      ellipse(myX+50, myY+50, 10, 10);
    }

    if (Num==2) {
      fill(255, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
      rect(myX, myY, 100, 100);
      fill(3, 3, 3);
      ellipse(myX+35, myY+35, 10, 10);
      ellipse(myX+65, myY+65, 10, 10);
    }
    if (Num==3) {
      fill((int)(Math.random()*255)+1, 255, (int)(Math.random()*255)+1);
      rect(myX, myY, 100, 100);
      fill(3, 3, 3);
      ellipse(myX+30, myY+30, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
      ellipse(myX+70, myY+70, 10, 10);
    }
    if (Num==4) {
      fill((int)(Math.random()*255)+1, 255, (int)(Math.random()*255)+1);
      rect(myX, myY, 100, 100);
      fill(3, 3, 3);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+25, myY+75, 10, 10);
      ellipse(myX+75, myY+25, 10, 10);
      ellipse(myX+75, myY+75, 10, 10);
    }
    if (Num==5) {
      fill((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, 255);
      rect(myX, myY, 100, 100);
      fill(3, 3, 3);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+25, myY+75, 10, 10);
      ellipse(myX+75, myY+25, 10, 10);
      ellipse(myX+75, myY+75, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
    }
    if (Num==6) {
      fill((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, 255);
      rect(myX, myY, 100, 100);
      fill(3, 3, 3);
      ellipse(myX+30, myY+30, 10, 10);
      ellipse(myX+70, myY+30, 10, 10);
      ellipse(myX+30, myY+50, 10, 10);
      ellipse(myX+70, myY+50, 10, 10);
      ellipse(myX+30, myY+70, 10, 10);
      ellipse(myX+70, myY+70, 10, 10);
    }
  }
}
