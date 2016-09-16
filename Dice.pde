void setup()
{
	size(375,425);
	
	noLoop();
}
void draw()
{
	background (111);
	int sum =0;
	for(int x =10; x <370; x= x +61)
	{
	for (int y = 10; y <370; y=y+61) 
		{
			
		Die bob = new Die(x,y);
		//bob.roll();
		bob.show();

				sum = sum + bob.answer;
				
		}	
	}
	fill(int(random (253)),int(random(253)), int(random(253)));
	textSize(15);
	text("Your lucky number is: " + sum , 90, 410);
}
void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	
	int myX, myY, answer;
	Die(int x, int y) //constructor
	{
		myY = y;
		myX = x;
		roll();

		//int myX =(int)(Math.random()*200);
		//int myY = (int)(Math.random()*200);
	}
	void roll()
	{
		answer = (int)(Math.random()*6+1);
	}
	void show()
	{
	noStroke();
	fill(255);
	
	rect(myX,myY,50,50,7);
	if(answer == 1){
			fill(int(random (253)),int(random(253)), int(random(253)));
			ellipse(myX+25,myY+25,10,10);
			
		}
		else if(answer == 2){
			fill(int(random (253)),int(random(253)), int(random(253)));
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+35,myY+35,10,10);
			
		}
		else if(answer == 3){
			fill(int(random (253)),int(random(253)), int(random(253)));
			ellipse(myX+12,myY+12,10,10);
			ellipse(myX+25,myY+25,10,10);
			ellipse(myX+38,myY+38,10,10);
			
		}
		else if(answer == 4){
			fill(int(random (253)),int(random(253)), int(random(253)));
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+15,myY+35,10,10);
			ellipse(myX+35,myY+15,10,10);
			ellipse(myX+35,myY+35,10,10);
			
		}
		else if(answer == 5){
			fill(int(random (253)),int(random(253)), int(random(253)));
			ellipse(myX+12,myY+12,10,10);
			ellipse(myX+12,myY+38,10,10);
			ellipse(myX+25,myY+25,10,10);
			ellipse(myX+38,myY+12,10,10);
			ellipse(myX+38,myY+38,10,10);
			

		}
		else if(answer == 6){
			fill(int(random (253)),int(random(253)), int(random(253)));
			ellipse(myX+12,myY+12,10,10);
			ellipse(myX+12,myY+25,10,10);
			ellipse(myX+12,myY+38,10,10);
			ellipse(myX+38,myY+12,10,10);
			ellipse(myX+38,myY+25,10,10);
			ellipse(myX+38,myY+38,10,10);
			
		}
	}

}

