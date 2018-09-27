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
int counter;

void draw() {
  background(#D5A3F5); //purple
  for( int i=0; i <= 1000000; i++) { 
  number = int (random (-2, 2)); //Will pick random number in these areas
 while (number == 0) {
 }

 if (number == -1) {counter -1 += 1;}
 if (number == 1) {counter1 += 1;}
  }
  println ("Number of -1: " + counter[0]);
  println ("Number of 1: " + counter[1]);
  exit(); //Ensures Draw Loop ends too; exit() is how we build a Quit Button
  
  // noLoop(); //Stops the Manditory draw() {} Function after one cycle
  // Great way to break the Automatic Draw Loop
  
   //End FOR Loop
   number = int (random (-2, 2)); {
 }
  counter += 1;
  println ("Choice#" + counter + ": " + number);
}

void setup() {
  size(500, 500);
  ballPositionX = width/2; //starting ball position;
  ballStartX = width/2;
  ballX = ballStartX;
  ballStartY = height/2;
}

  
  //Ball Movement within Pong Table
  if (ballX == 0 ) { //Score for Player 2, note the index
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

  fill(0); //black
  ellipse(ballX, ballY, width/70, width/70); // ball is ratio of width
  // Pong table here is square but does not need to be
  // Thus take same key-variable for size of ball
  print ("ballX: " + ballX);
  println (", ballY: " + ballY);
}
