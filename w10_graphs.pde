//All three "graphs" will use these variables
int angle; //The degree angle we will use for sin() and cos() functions.
int dotDiameter;//The size of the circle that will be graphing.

int sinAmplitude;
int circRadius;
int spiralRadius;

void setup() {
  size(600, 600);
  background(0);
  dotDiameter = 4;
  sinAmplitude = 100;
  circRadius = 100;
  spiralRadius = 100;
  angle = 0;
  stroke(255);
}//setup

void draw() {
  //background(0);
  //sin curve
  drawSinCurve(angle, sinAmplitude, sinAmplitude);
  //circle
  drawCircle(angle, circRadius, width/2, sinAmplitude*2 + circRadius);
  //concentric circles
    drawCircle(angle, spiralRadius, width/2, sinAmplitude*2 + circRadius*3);
    if (angle % 360 == 0){
      if (angle >= 360){
        if (angle < 1080){
    spiralRadius -= dotDiameter*2;
  }}}
  angle++;
}//draw

void drawSinCurve(int degrees, int amplitude, int yOffset) {
  float cx = amplitude * cos( radians(degrees) ) + yOffset;
  int temp = 0;
  circle(angle, cx, dotDiameter); 
  if (angle >= width){
    temp++;
  }
  if(temp >= 1){
  float cy = amplitude * -cos( radians(degrees) - 5) + yOffset;
  circle(angle - width, cy, dotDiameter);
}}

void drawCircle(int degrees, int radius, int xOffset, int yOffset) {
  float cx = radius * cos( radians(degrees) ) + xOffset;
  float cy = radius * sin( radians(degrees) ) + yOffset;
  circle(cx, cy, dotDiameter);
}
