void setup()
{
	size(500, 300);
	textAlign(CENTER,CENTER);
	noLoop();
	background(220);
}
void draw()
{
	background(220);
	int sum = 0;
	for(int y = 5; y<=300; y=y+60){
		for (int x = 50; x < 500; x = x + 60){
    		Die ok = new Die(x, y);
    		ok.roll();
    		ok.show();
    		sum += ok.rolls;

    	}
    }
    fill(0);
    textAlign(CENTER,CENTER);
    textSize(20);
    text("The total is " + sum, width/2, 176);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int rolls, myX, myY;
	Die(int x, int y) //constructor
	{
		rolls = 1;//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		rolls = (int)(Math.random()*6)+1; 

	}
	void show()
	{
		//your code here
		fill((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
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
		// fill(255);
		// stroke(255);
		// text(rolls, myX, myY+30);
	}
}
