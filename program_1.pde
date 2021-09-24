//setup and background
size(500,300);  //set the canvas size to 500 by 300 pixels
smooth(); // turn on smoothing, anti-aliases the lines
background(230,230,230); // set grey background ( R, G, B) -> same as background(230); or background(#E6E6E6);
// draw 2 crossed lines
stroke(130,0,0); // set the color (R,G,B) of the stroke
strokeWeight(4); //pixel thickness = 4
line(width/2-70,height/2-70,width/2+70,height/2+70);
// line(startx, starty, endx, endy);
line(width/2+70,height/2-70,width/2-70,height/2+70);
//draw filled circle
fill(255,150); 
ellipse(width/2,height/2,50,50); // circle = ellipse with equal width and height
