 void setup()
 {
 	noLoop();
	size(600,600);
 } //end of setup

 void draw()
 {
	//your code here
	background(155,155,155);
	int sum = 0;
	int six = 0;
	for (int j =10; j < 600; j=5){
		for (int i = 10; i < 600; i=50){
			Die joe = new Die(i, j);
			joe.show();
			sum = sum  joe.rollNum;
		} //end of i
	} //end of j


	textSize(24);
	text("Sum: "  sum, 10, 430);
 } //end of draw


 void mousePressed()
 {
 	redraw();
 } //end of mouse

class Die 
 {
	int dieX;
	int dieY;

	int randRoll;

	Die (int x, int y) 
 	{
		//variable initializations here
		dieX = x;
		dieY = y;
 	} //end of constructor

 	void roll()
 	{
		randRoll = (int)(Math.random()*6)1;

		int x = dieX + 15;
		int centerY = dieY + 25;
		int centerX = dieX + 25;
		int topY = dieY + 15;
		int bottomY = dieY + 35;

		fill(134, 120, 100);

		if (randRoll == 6){
			//dots: 6
			ellipse(x, topY, 5, 5); 
			ellipse(x+20, topY, 5, 5);
			ellipse(x, centerY, 5, 5);
			ellipse(x+20, centerY, 5, 5);
			ellipse(x, bottomY, 5, 5);
			ellipse(x+20, bottomY, 5, 5);
		} 
		
		else if (randRoll == 5){
			//dots: 5
			ellipse(x, topY, 5, 5);
			ellipse(x+20, topY, 5, 5);
			ellipse(centerX, centerY, 5, 5);
			ellipse(x, bottomY, 5, 5);
			ellipse(x+20, bottomY, 5, 5);
		} 
		
		else if (randRoll == 4){
			//dots: 4
			ellipse(x, topY, 5, 5);
			ellipse(x+20, topY, 5, 5);
			ellipse(x, bottomY, 5, 5);
			ellipse(x+20, bottomY, 5, 5);	
		} 
		
		else if (randRoll == 3){
			//dots: 3
			ellipse(x+20, topY, 5, 5);
			ellipse(centerX, centerY, 5, 5);
			ellipse(x, bottomY, 5, 5);
		} 
		
		else if (randRoll == 2){
			//dots: 2
			ellipse(x+20, topY, 5, 5); 
			ellipse(x, bottomY, 5, 5);
		} 
		
		else {
			//dots: 1
			ellipse(dieX+25, centerY, 5, 5);
		} 
 	} // end of roll

 	void show()
 	{
		fill(255);
		stroke(4);
		rect(dieX, dieY, 50, 50); 
		roll();
		
		fill(255);
		textSize(18);
 	} //end of show
 } //end of class

