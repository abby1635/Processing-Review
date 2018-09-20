// Global Variables
int ballX, ballPositionX;
int ballY, ballPositionY;

void setup() {
  size(500, 500);
  ballPositionX = width/2; //starting ball position;
}

void draw() {
  background(#D5A3F5); //purple

  if (ballPositionX < 500); {
    ballX=ballX + 1;
  }


  fill(0); //black
  ellipse(ballPositionX, height/2+ballX, width/70, width/70); // ball is ratio of width
  // Pong table here is square but does not need to be
  // Thus take same key-variable for size of ball
}
