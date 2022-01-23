void setup()
{
  size(500,500);
  background(255);
  strokeWeight(5);
  smooth();
  
  float radius = 100;
  int centX = 250;
  int centY = 250;
  
  stroke(0,25);
  noFill();
  ellipse(centX,centY,radius*2,radius*2);
  
  stroke(20,50,70);
  strokeWeight(1);
  float x,y;
  float noise_value = random(12);
  float radVar, thisRad, rad;
  beginShape();
  fill(20,50,70,50);
  for (float ang=0; ang<=360; ang+=1) {
    noise_value +=0.1;
    radVar = 25*custom_noise(noise_value);
    
    thisRad = radius + radVar;
    rad = radians(ang);
    x = centX + (thisRad*cos(rad));
    y = centY + (thisRad*sin(rad));
    curveVertex(x,y); 
    }
  endShape();
}

//float custom_noise(float value){
//  float val = pow(sin(value),3);
//  return val;
//}

float custom_noise(float value){
  int count = int((value%12));
  float val = pow(sin(value),count);
  return val;
}
