void setup()
{
	noLoop();
size (1000,1000);
}
void draw()
{
background(197);
Die bob= new Die(100,100);
bob.show();
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
	}
	void roll()
	{
		Num =(int)(Math.random()*6)+1;

	}
	void show(){
    if (Num==1){
      fill(255,255,255);
      rect(10,10, myX, myY);
      fill(3,3,3);
      ellipse(myX,myY,10 ,10);	
    }
  }
}
