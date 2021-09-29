//I was able to write this code with the help of The Coding Train youtube channel
class Drop {
  float x = random(width);
  float y = random(-100, -100);
  float yspeed = random (4, 10);
  float len = random(5,10);
  
  void fall() {
    y = y + yspeed;
    yspeed = yspeed + 0.1;
    if (y > height) {
      y = random (-100, -100);
      yspeed = random (5, 10);
    }
  }
  
  void show() {
    stroke(149, 153, 157);
    line(x,y,x,y+len);
  }
}
