float x = 400;
float y = 300;

void setup() {
   size(800, 600, P2D);
   x = 300;
   y = 300;
}

void draw() {
  noStroke();
    x = x + 1000;
    if(x > width) {
      x = 0;
    }
    if (y > height) {
    }
    
    fill(random(255),0,0);
    rect(random(255), 300, 300, random(100));
    rect(300, random(255), random(255), 300);
}
