void setup()
{
	size(375,375);
	noLoop();
}
void draw()
{
	for(int x =10; x <370; x= x +61)
	{
	for (int y = 10; y <370; y=y+61) {
			
		Die bob = new Die(x,y);
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
	int myX, myY;
	Die(int x, int y) //constructor
	{
		myY = y;
		myX = x;
		//int myX =(int)(Math.random()*200);
		//int myY = (int)(Math.random()*200);
	}
	void roll()
	{

	}
	void show()
	{
	noStroke();
	fill(255);
	rect(myX,myY,50,50,7);
	}
}
