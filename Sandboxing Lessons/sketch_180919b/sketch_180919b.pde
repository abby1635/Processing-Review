// Global Variables
int ballX, ballPositionX;
int ballY, ballPositionY;
int ballStartX;
int ballStartY;
int ballDiameter;
float ballMoveX = 1.0;
float ballMoveY = 1.0;

void setup() {
  size(500, 500);
  ballPositionX = width/2; //starting ball position;
  ballStartX = width/2;
  ballX = ballStartX;
  ballStartY = height/2;
}

void draw() {
  background(#D5A3F5); //purple

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
