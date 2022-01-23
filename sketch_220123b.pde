size(500,500);
background(255);
strokeWeight(0.5);
smooth();

int centX=250;
int centY = 250;

stroke(0,30);
noFill();
//ellipse(centX,centY,radius*2,radius*2);

//stroke(20,50,70);
float x,y;
for(int i=0; i<50; i++) { //drawing 50 spirals
float lastx = -999;
float lasty = -999;
float radNoise = random(20);
float radius = 10;
stroke(random(15), random(10), random(25), 100);

int startangle = int(random(360));
int endangle = 1440 + int(random(1440));
int anglestep = 5 + int(random(3));
for(float ang=startangle; ang <= endangle; ang+=anglestep) {
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
}
