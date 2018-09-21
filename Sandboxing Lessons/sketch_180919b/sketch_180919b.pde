// Global Variables
int ballX, ballPositionX;
int ballY, ballPositionY;
int ballMoveX = 1;
int ballMoveY = 1;

void setup() {
  size(500, 500);
  ballPositionX = width/2; //starting ball position;
}

void draw() {
  background(#D5A3F5); //purple

 if (ballX == 500 | BallY == 500) {
   if (ballX == 500) {
     ballMoveY= ballMoveX * (-1);
   }
   if (ballY == 500) {
     ballMoveY = ballMoveY * (-1);
   }
 }
  
if (ballY <= 500) {
  ballY += ballMoveY; //origionally x+1 operation

  fill(0); //black
  ellipse(ballPositionX, height/2+ballX, width/70, width/70); // ball is ratio of width
  // Pong table here is square but does not need to be
  // Thus take same key-variable for size of ball
{
