void setup()
{
	size(500, 300);
	textAlign(CENTER,CENTER);
	noLoop();
	background(220);
}
void draw()
{
	for(int y = 5; y<=300; y=y+60){
		for (int x = 50; x < 500; x = x + 60){
    		Die ok = new Die(x, y);
    		//count += rolls;
    		ok.roll();
    		ok.show();
    	}
    }
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int rolls, myX, myY, count;
	Die(int x, int y) //constructor
	{
		rolls = 1;//variable initializations here
		myX = x;
		myY = y;
		count = 0;
	}
	void roll()
	{
		rolls = (int)(Math.random()*6)+1; 

	}
	void show()
	{
		//your code here
		fill(100);
		noStroke();
		rect(myX-35,myY,50,50,20);
		fill(170);
		stroke(220);
		if(rolls == 1){
			ellipse(myX-10, myY+25, 5, 5);
		}else if(rolls == 2){ 
			ellipse(myX-3, myY+25, 5, 5);
			ellipse(myX-17, myY+25, 5, 5);
		}else if(rolls == 3){ 
			ellipse(myX-3, myY+34, 5, 5);
			ellipse(myX-10, myY+25, 5, 5);
			ellipse(myX-17, myY+16, 5, 5);
		}else if(rolls == 4){ 
			ellipse(myX-2, myY+15, 5, 5);
			ellipse(myX-18, myY+15, 5, 5);
			ellipse(myX-2, myY+35, 5, 5);
			ellipse(myX-18, myY+35, 5, 5);
		}else if(rolls == 5){ 
			ellipse(myX-10, myY+25, 5, 5);
			ellipse(myX-2, myY+15, 5, 5);
			ellipse(myX-18, myY+15, 5, 5);
			ellipse(myX-2, myY+35, 5, 5);
			ellipse(myX-18, myY+35, 5, 5);
		}else if(rolls == 6){ 
			ellipse(myX-2, myY+15, 5, 5);
			ellipse(myX-18, myY+15, 5, 5);
			ellipse(myX-2, myY+35, 5, 5);
			ellipse(myX-18, myY+35, 5, 5);
			ellipse(myX-2, myY+25, 5, 5);
			ellipse(myX-18, myY+25, 5, 5);
		}
		//text(count, 200, 200);
		// fill(255);
		// stroke(255);
		// text(rolls, myX, myY+30);
	}
}
