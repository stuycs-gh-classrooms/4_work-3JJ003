
color rando;
int angle; //The degree angle we will use for sin() and cos() functions.
int dotDiameter;//The size of the circle that will be graphing.
int amp = 40;
int off = 10;
int back = 0;


int sinAmplitude;
int circRadius;
int spiralRadius;
int cx;

int radBigSet = 40;
int wx = 0;
int wcx = 0;
int wy = 600;
int wny = wy;
int radius = 2;
int leap = 0;
void setup(){
  size(600,700);
  background(0);
  axes();
 
   dotDiameter = 4;
  sinAmplitude = 100;
  circRadius = 100;
  spiralRadius = 100;
  angle = 0;
  stroke(255);
}

void draw(){
 wave();
 
  drawSinCurve(angle, sinAmplitude, sinAmplitude);
  //circle
  drawCircle(angle, circRadius, width/2, sinAmplitude*2 + circRadius);
  //concentric circles
  if (angle % 360 == 0) {
    spiralRadius -= dotDiameter * 2;
  }
  drawCircle(angle, spiralRadius, width/2, sinAmplitude*2 + circRadius*3);
 
 angle++;
 
}


void axes(){
  stroke(255);
   line(0, height/2, width, height/2);
    line(width/2, 0, width/2, height);
   stroke(0);

 
}

void wave(){
  stroke(0);
  circle(wx, wy, radius*2);
  wx++;
  wy = int(amp*sin(3*PI*(angle+off)/width) + wny);

  stroke(rando);
  if (wx == width){
    wx = 0;
    off += 10;
    println(wx, angle);
   
  }
}

void drawSinCurve(int degrees, int amplitude, int yOffset) {
  cx++;
  float y = abs(amplitude * sin(radians(.92*degrees))) + yOffset;
 
  if (angle >= width) { // set x coord back
      cx = angle % width;

  }
  if (angle % width == 0) {// if it loops
    rando = color(random(0, 256), random(0, 256), random(0, 256));

   }

    circle(cx, y, dotDiameter);

}

void drawCircle(int degrees, int radius, int xOffset, int yOffset){
  float x = radius * cos(radians(degrees)) + xOffset;
  float y = radius * sin(radians(degrees)) + yOffset;
  circle(x, y, dotDiameter);
}
