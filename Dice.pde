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
	int roll, myX, myY;
	Die(int x, int y) //constructor
	{
		roll = 1;//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
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
		fill(100);
		noStroke();
		rect(myX-35,myY,50,50,20);
		if(roll==1){
			text("1", myX, myY+30);
		}else if(roll==2){
			text("2", myX, myY+30);
		}else if(roll==3){
			text("3", myX, myY+30);
		}else if(roll==4){
			text("4", myX, myY+30);
		}else if(roll==5){
			text("5", myX, myY+30);
		}else if(roll==6){
			text("6", myX, myY+30);
		}
	}
}
