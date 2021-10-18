// References used for this assignment
        //https://processing.org/examples/clock.html
        //https://www.youtube.com/watch?v=tZ_xQUqUgVM&t=377s&ab_channel=ProgramminginProcessing
        //https://www.youtube.com/watch?v=8sDUnXKz5dA&t=2s&ab_channel=RoboticsPoint

int Hour, Minute, Second, myHour;
float sec_deg, min_deg, hour_deg, sx, sy, mx, my, hx, hy;
long current_time;

void settings() {
  size(600,600);
}

void setup() {
  background(0);
  Dial();
  current_time = millis();
  Second = second();
  Minute = minute();
  myHour = hour();
  
 if(myHour > 12){
   Hour = myHour - 12;
 }else{
   Hour = myHour;
   if(Hour==0){
     Hour = 12;
   }
 }
}

void draw() {
  
  if(current_time+1000 < millis()){
    current_time = millis();
    
    fill(40, 93, 52);
    noStroke();
    ellipse(width/2, height/2, 250, 250);
    
   Second++;
   if(Second > 59){
     Second = 0;
     Minute++;
     if(Minute>59){
      Minute = 0;
      Hour++;
     if(Hour>12){
      Hour = 1;
     }
    }
   }
   
  
   sec_deg = Second * 6;
   min_deg = Minute * 6 + (sec_deg * 0.016666667);
   hour_deg = Hour * 30 + (min_deg * 0.08333333);
   
   sx = width/2 + 110*cos((sec_deg-90)*(PI/180));
   sy = height/2 + 110*sin((sec_deg-90)*(PI/180));
   mx = width/2 + 90*cos((min_deg-90)*(PI/180));
   my = height/2 + 90*sin((min_deg-90)*(PI/180));
   hx = width/2 + 70*cos((hour_deg-90)*(PI/180));
   hy = height/2 + 70*sin((hour_deg-90)*(PI/180));
   
   //display 
   stroke(0);
   line(width/2, height/2, sx, sy);
   line(width/2, height/2, mx, my);
   line(width/2, height/2, hx, hy);
   
   fill(255, 255, 0);
   noStroke();
   ellipse(width/2, height/2, 20, 20);
  }
}

void Dial(){
  
  fill(123, 123, 124);
  noStroke();
  ellipse(width/2, height/2, 300, 300);
  
  for(int i=0;i<360;i+=15) {
      fill(0);
      noStroke();
      ellipse(width/2 + 135*cos(i*(PI/180)), height/2 + 135*sin(i*(PI/180)), 10, 10);
  }
 }
