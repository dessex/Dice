Die[] bob;
void setup()

{
noLoop();
size (1000,1000);
bob= new Die [10];
for (int i=0; i<bob.length;i++){
  bob[i]=new Die((i*100),10);
}
}

void draw()
{
background(197);
for (int i=0; i<bob.length;i++){
  bob[i].show();
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

    Num =1;

  }

  void show(){

    if (Num==1){
      fill(255,255,255);
      rect(myX,myY,100,100);
      fill(3,3,3);
      ellipse(myX+50,myY+50,10,10);  
    }
    
    if (Num==2){
      fill(255,255,255);
      rect(myX,myY,100,100);
      fill(3,3,3);
      ellipse(myX+50,myY+50,10,10);  
  }
  }
}
