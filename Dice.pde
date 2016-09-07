void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
	for(int x =50; x <350; x= x +51)
	{
		Die bob = new Die(x,200);
		bob.show();
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
	fill(21, 255, 0);
	rect(myX,myY,50,50,7);
	}
}
