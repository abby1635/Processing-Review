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
  ballX = ballStartX;
  ballStartY = height/2;
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

  
  //Ball Movement within Pong Table
  if (ballX == 0 || ballX == width) { //Score for Player 2, note the index
    if (ballX == 0) { //Player 2 Score
      score[1] += 1;
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
