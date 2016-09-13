void setup()
{
	size(375,375);
	background (255,0,255);
	noLoop();
}
void draw()
{
	for(int x =10; x <370; x= x +61)
	{
	for (int y = 10; y <370; y=y+61) {
			
		Die bob = new Die(x,y, 1);
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
	int myX, myY, answer;
	Die(int x, int y, int w) //constructor
	{
		myY = y;
		myX = x;
		answer = w;

		//int myX =(int)(Math.random()*200);
		//int myY = (int)(Math.random()*200);
	}
	void roll()
	{
		int value = (int)(Math.random()*6-1);
	}
	void show()
	{
	noStroke();
	fill(255);
	rect(myX,myY,50,50,7);
	if(answer == 1){
			fill(255,0,255);
			ellipse(myX+20,myY+30,10,10);
		}
		else if(answer == 2){
			fill(255,0,255);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
		}
		else if(answer == 3){
			fill(255,0,255);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
		}
		else if(answer == 4){
			fill(255,0,255);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
		}
		else if(answer == 5){
			fill(255,0,255);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);

		}
		else if(answer == 6){
			fill(255,0,255);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
			ellipse(myX+20,myY+30,10,10);
		}
	}
}
