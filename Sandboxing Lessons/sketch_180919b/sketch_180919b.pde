// Global Variables
int ballX, ballPositionX;
int ballY, ballPositionY;
int ballStartX;
int ballStartY;
int ballDiameter;
float ballMoveX = 1.0;
float ballMoveY = 1.0;
int score [];
int number;
int [] counter = {1, -1};
int paddleWidthRatio; //Variable is being repeated in setup() figuring good width of paddle, half of ballDiameter
//Reason: do not bounce of the edge of the paddle
int paddleHeightRatio = 10;
int [] paddle = {0, 0}; //Paddle width and height
int [] player = new int [4]; //Alternate way of initializing an Array, for paddles
//0: Player1_X, 1:Player1_Y, 2:Player2_X, 3:Player2_Y
// End Global Variables

void setup() {
  size(500, 500);
  ballPositionX = width/2; //starting ball position;
  ballStartX = width/2;
  ballStartY = height/2;
  ballX = ballStartX;
  ballY = ballStartY;
  ballDiameter = width/70; //must pick one dimension for both ellipse diameters, for a circle
}

paddleWidthRatio = ballDiameter/2;
paddle[0] = paddleWidthRatio;
paddle[1] = height/paddleHeightRatio;
player[0] = 0;
player[1] = height/2 - height/paddleHeightRatio/2; //middle minus half the paddle to find the paddles center
int section = width / paddleWidthRatio; // Local Variable: calculate the divisions of the paddle and draw in the last one
player[2] = width*(section-1)/section; // *(paddlewidthRatio-1)/paddlewidthRatio
player[3] = height/2;
}
float [] number = {0.3, 0.49, 0.5, 0.7, 0.9, 1.1, 1.49, 1.6};
int counter;

  println ("Checking Array Length to debug casting: " + number.length); //should return
  for (int i=0; i<number.length; i++) {
    println ("Casting " + number[i] + " to " + int(number[i]) );
  }
  println ("What do these examples show us about Casting-Narrow and Rounding?");
  }

void draw() {
  background(#D5A3F5); //purple
  for( int i=0; i <= 1000000; i++) { 
  number = int (random (-2, 2)); //Will pick random number in these areas
 while (number == 0) {
 }

 if (number == -1) {counter[0] += 1;}
 if (number == 1) {counter[1] += 1;}
  }
// ln print
}

//Printing Ball
fill(0); //Black
ellipse(ballX, ballY, ballDiameter, ballDiameter);

//Printing Score to the Canvas
textSize(0.1*width);
text("Player 1:\n" + score[0], (width*1/5)-(0.1*width), height*1/5); //Printing to ration of screen, Player 1 is minusing width of font
// Note: review of Character escape and this seems to "busy" on the screen
text(score[1], width*4/5, height*1/5);


//Debugging Ball Position
//print ("Ball X-Value: " + ballX);
//println (", Ball Y-Value: " + ballY);
}

number = int (random (-2, 2));
while (number == 0) {
  number = int (random (-2, 2));
}
counter += 1;
println ("Choice#" + counter + ": " + number);
}

//Calculating "next" ball position
//Section necessary when calling functions so passing current arguments
ballX += ballMoveX; //origionally x+1 operation
ballY += ballMoveY; //origionally x+1 operation

  
  //Ball Movement within Pong Table
  if (ballX == 0 || ballX == width) { //Score for Player 2, note the index
    if (ballX == 0) { //Player 2 Score
      score[1] += 1;
  }
  if (ballY == height || ballY == 0) {
    ballMoveY = ballMoveY * (-1);
  }
  
  //Printing Ball
  fill(0); //Black
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
  
  //Drawing Paddles
  fill(#FF00FF); //Purple
  rect(player[0], player[1], paddle[0], paddle[1]);
  rect(player[2], player[3], paddle[0], paddle[1]);
  fill(0); //Reseting to Black
  
  //Debugging Ball Position
  //print ("Ball X-Value: " + ballX);
  //println (", Ball Y-Value: " ballY);
  }
  
  if (ballX == width ) { //Score for Player 1
  score[1] += 1;
  println ("score Board is: " + score[0] + "Player-1" + "     " +  "Player-2");
  ballX = ballStartX;
  ballY = ballStartY;
  }
  if (ballX == width ) { //Score for Player 1
  score[1] += 1;
  println ("Score Board is: " + score[1] + " Player 1" + "     " + score[2] + " Player 2");
  ballX = ballStartX;
  ballY = ballStartY;
  
  }
  if (ballX == 500 | ballY == 500) {
    if (ballX == 500) {
      ballMoveY= ballMoveX * (-1);
    }
  }

  if (ballX <= width && ballX >= 0) {
    ballX += ballMoveX; //origionally x+1 operation
  }
  if (ballY <= height && ballY >= 0) {
    ballY += ballMoveY; //origionally x+1 operation
  }
  fill(#FF00FF); //Purple
  rect(player[0], player[1], paddle[0], paddle[1]);
  rect(player[2], player[3], paddle[0], paddle[1]);
  fill(0); //Reseting to Black
  
  //Debugging Ball Position
  //print ("Ball X-Value: " + ballX);
  //println (", Ball Y-Value: " + ballY);
  }
  
  //Code to Move Paddles, keyboard and mouseX&Y key variables
  //Player 1 Movement
  if (keyPressed == true & key == CODED { //alternate is void keyPressed(){}, always contains the most recent keyboard key stroke
   if (keyCode == UP) { //KeyCode is used for UP, DOWN, LEFT, and RIGHT; and ALT, CONTROL, and SHIFT
     if (player[1] >= 5) { //Easier to use && instead of nesting IF statements
       player[1] -= 5; //Review incrementation other than -1
     }
     if (player[1] < 0) { //Catch any subtraction equalling less than zero
       player[1] =0;
     }
   }
   
   if (keyCode == DOWN) {
     if (player[1] + paddle[1] <= height) {
       player[1] += 5; //Review incrementation other than +1
     }
     if (player[1] + paddle[1] <= height) {
       player[1] = height - paddle[1] - 1; //Cannot add "player[1] + paddle[1]" in an assignment; thus algebra needed
       //Note: the "-1" shows the black border of the paddle at the bottom, which looks more aesthetic
       //Note: the height is actually -1 pixel because of the border
     }
   }
  } //End of keyPressed
  
  //Player 2 Movement
  player[3] = ballY - paddle[1]/2;
  if (player[3] <= 0) {
    player[3] = 0;
  }
  if (player[3] >= height - paddle[1]){
    player[3] = height - paddle[1] - 1;
  }
  
    //Drawing Paddles
  fill(FF00FF); //Purple
  rect(player[0], player[1], paddle[0], paddle[1]);
  rect(player[2], player[3], paddle[0], paddle[1]);
  fill(0); //Reseting to Black
  
  //Debugging Ball Position
  //print ("Ball X-Value: + ballX);
  //println (", Ball Y-Value: " + ballY);
}

  fill(0); //black
  ellipse(ballX, ballY, width/70, width/70); // ball is ratio of width
  // Pong table here is square but does not need to be
  // Thus take same key-variable for size of ball
  print ("ballX: " + ballX);
  println (", ballY: " + ballY);
}
