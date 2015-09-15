Die joe;
 void setup(){
     size(600,600);
   noLoop();

 } //end of setup

 void draw(){
  background(0);
  int sum = 0;
  for (int j = 90; j < 500; j+=75){
    for (int i = 90; i < 500; i+=75){
      Die joe = new Die(i, j);
      joe.show();
      sum = sum + joe.randRoll;
    } //end of i
  } //end of j
  
  textSize(24);
  text("Sum: "  sum, 10, 430);
 } //end of draw


 void mousePressed(){
   redraw();
 } //end of mouse

class Die{
  int dieX, dieY, randRoll;

  Die (int x, int y) 
   {
    dieX = x;
    dieY = y;
   } //end of constructor

   void roll()
   {
    randRoll = (int)(Math.random()*6)+1;

    int x = dieX + 15;
    int centerY = dieY + 25;
    int centerX = dieX + 25;
    int topY = dieY + 15;
    int bottomY = dieY + 35;

    fill(255, 0, 0);

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

void show(){
    fill(255);
    stroke(4);
    rect(dieX, dieY, 50, 50,5); 
    roll();
    
    fill(255);
    textSize(18);
   } //end of show
 } //end of class

