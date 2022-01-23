size(500,500);
background(255);
strokeWeight(5);
smooth();

float radius = 10;
int centX=250;
int centY = 250;
float radNoise = random(10);

stroke(0,30);
noFill();
ellipse(centX,centY,radius*2,radius*2);

stroke(20,50,70);
float x,y;
float lastx = -999;
float lasty = -999;
for(float ang=0; ang <= 1440; ang+=5) {
  radius+=0.5;
  radNoise +=0.05;
  float newR = radius + (noise(radNoise)*200)-100;
  float rad = radians(ang);
  x = centX + (newR*cos(rad));
  y = centY + (newR*sin(rad));
  if(lastx > -999) {
    line(x,y,lastx,lasty);
  }
  lastx = x;
  lasty = y;
}
