void setup()
{
	size(500, 300);
	textAlign(CENTER,CENTER);
	noLoop();
	background(220);
}
void draw()
{
	Die ok = new Die(50,150);
	ok.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int roll = 0, myX, myY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		rect(x, y, width, height);
		myX = x;
		myY = y;
	}
	void roll()
	{
		int roll = 0;
		if((int)(Math.random()*6)+1 == 1){
			roll = 1;
		}else if((int)(Math.random()*6)+1 == 2){
			roll = 2;
		}else if((int)(Math.random()*6)+1 == 3){
			roll = 3;
		}else if((int)(Math.random()*6)+1 == 4){
			roll = 4;
		}else if((int)(Math.random()*6)+1 == 5){
			roll = 5;
		}else if((int)(Math.random()*6)+1 == 6){
			roll = 6;
		}


	}
	void show()
	{
		//your code here
		noStroke();
		fill(255);
	}
}
