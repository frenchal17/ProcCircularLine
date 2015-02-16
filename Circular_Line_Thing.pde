void setup(){
  size(500,500);
  background(360,360,360);
}

   float x1 = 0;
   float y1 = 0;
   float y2 = PI / 2;
   float x2 = PI / 2;
   //Establishing the coordinate bases needed for primary points
   float z = .05;
   //Unnecessary, I'll delete it at some point
   float c = .03;
   float c2 = .06;
   //Makes them points dance!
   float r = 4;
   //Radius of the circles
   float e1x = mouseX - 50 * cos(x1);
   float e2x = mouseX + 50 * cos(x1);
   float e3x = mouseX - 50 * cos(x2);
   float e4x = mouseX + 50 * cos(x2);
   float e1y = mouseY - 50 * sin(y1);
   float e2y = mouseY + 50 * sin(y1);
   float e3y = mouseY - 50 * sin(y2);
   float e4y = mouseY + 50 * sin(y2);
   float f1 = 0;
   float g1 = 0;
   float f2 = 0;
   float g2 = 0;

void draw(){
   float e1x = (width / 2) - 50 * cos(x1);
   float e2x = mouseX + 50 * cos(x1);
   float e3x = mouseX - 50 * cos(x2);
   float e4x = mouseX + 50 * cos(x2);
   float e1y = (height / 2) - 50 * sin(y1);
   float e2y = mouseY + 50 * sin(y1);
   float e3y = mouseY - 50 * sin(y2);
   float e4y = mouseY + 50 * sin(y2);
   //  background(360,360,360);
     x1 = x1 + c;
     y1 = y1 + c;
     x2 = x2 + c;
     y2 = y2 + c;
     f1 = f1 + c2;
     g1 = g1 + c2;
     g2 = g2 - c2;
     f2 = f2 - c2;
  ellipse((width / 2) - 50 * cos(x1), (height / 2) - 50 * sin(y1), r, r);
  ellipse(e1x - 20 * cos(f1), e1y + 20 * sin(g1), r/2, r/2);
  line(0, 0, (width / 2) - 50 * cos(x1), (height / 2) - 50 * sin(y1));
  line(width, 0, e1x - 20 * cos(f1), e1y + 20 * sin(g1));
  ellipse((width / 2) + 50 * cos(x1), (height / 2) - 50 * sin(y1), r, r);
  line(width, height, (width / 2) + 50 * cos(x1), (height / 2) - 50 * sin(y1));
  fill(0,0,0);
}
