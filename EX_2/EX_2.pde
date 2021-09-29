PImage street1; 
float x;
float y; 
float speedX = 1;
 
Drop[] drops = new Drop[700];

void setup() {
  size(600, 600, P2D);
  street1 = loadImage("street1.jpg");
  x = width/2;
  y = height/2; 
  imageMode(CENTER);
  for (int i = 0; i < drops.length; i++) {
  drops[i] = new Drop();
  }
}
     
void draw() {
  image(street1 , x, y, street1.width * (height / street1.height), height);   
  x += speedX;
  if (x > width) {
    x = width/2;
  } 
  
  for (int i = 0; i < drops.length; i++) {
    drops[i].show();
    drops[i].fall();
  }
  smooth();
  strokeWeight(2);
  rect(142,490,30,60); //body
  
  ellipse(157,470,50,50); //head
  ellipse(147,464,20,20); //L_eye
  ellipse(166,464,20,20); //R_eye
 
  
  ellipse(155,480,10,5);//mouth
  line(173,492,190,524);//R_hand
  line(143,492,120,524);//L_hand
  
  line(150,550,145,575);
  line(160,550,165,575);
  
  text(mouseX+","+ mouseY,13,13); //navigation
} 
