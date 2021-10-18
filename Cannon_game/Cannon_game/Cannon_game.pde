PImage base;
 
float cannonX = 350;
float ballY = 650;
float ballX = 355;

float ipX = 350;
float ipY = 0;

boolean moveDown = true;
boolean moveUp = false;
boolean ball = true;

void setup() {
  size(1060, 580, P2D);
  base = loadImage("base.jpeg");
}
void draw() {
  image(base, 0, 0, width, height);
  //ball
  fill(0, 0, 255);
  ellipse(ipX, ipY, 50, 50);
  //cannon
  fill(0);
  rect(cannonX, 520, 25, 60);
  //canonball
  ballX = cannonX + 5;
  ellipse(ballX, ballY, 10, 10);
//key & movements
if (keyPressed == true && key == CODED && keyCode == LEFT) {
  cannonX = cannonX - 9;
}

if (keyPressed == true && key == CODED && keyCode == RIGHT) {
  cannonX = cannonX + 9; 
}

if (moveDown == true) {
  ipY = ipY + 7;
}

if (ipY <= 650) {
  moveDown = true;
}

if (ipY> 650) {
  ipY = 5;
  ipX = random (30, 650);
  moveDown = true;

}

if (keyPressed && key == ' ') { 
  moveUp = true;
}

if (moveUp == true) {
  ballY = ballY - 10;
}

if (ballY <10) {
  ballY = 650;
  moveUp = false;
}
//function
if(ballY < ipY + 50 && ballY > ipY - 50 && ballX < ipX + 50 && ballX > ipX - 50) 
{
  ipY = 0;
  ipX = random (30, 670);
  moveDown = true;
 }
}
