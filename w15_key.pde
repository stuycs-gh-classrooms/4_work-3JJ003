int[] xvals, yvals;
int MAX_POINTS = 1000, numPoints, col = 255;

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[MAX_POINTS];
  yvals = new int[MAX_POINTS];
  numPoints = 0;
  stroke(255);

  drawLines(xvals, yvals);
}

void draw(){
  background(0);
  drawLines(xvals, yvals);
}

void mousePressed(){
  xvals[numPoints]=(mouseX);
  yvals[numPoints]=(mouseY);
  numPoints++;
}

void keyPressed(){
  if (key == 'c'){
    numPoints = 0;
  }
  if (key == '0'){
    stroke(255);
  }
  if (key == '1'){
    stroke(255,0,0);
  }
  if (key == '2'){
    stroke(0,255,0);
  }
  if (key == '3'){
    stroke(0,0,255);
  }
  if (key == '4'){
    stroke(0,255,255);
  }
  if (key == '5'){
    stroke(255,0,255);
  }
  if (key == '6'){
    stroke(255,255,0);
  }
  if (key == '7'){
    stroke(128);
  }
  if (key == '8'){
    stroke(int(random(256)),int(random(256)),int(random(256)));
  }
  if (key == CODED){
    moveLines(xvals, yvals, 5, 5);
  }
}

void drawLines(int[] xs, int[] ys) {
  strokeWeight(3);
  for (int i=1; i < numPoints; i++) {
    line(xs[i-1], ys[i-1], xs[i] ,ys[i]);
  }
}

void moveLines(int[] xs, int[] ys, int xMod, int yMod){
  if (keyCode == UP){
    for(int i = 0; i < ys.length; i++){
      ys[i]-=yMod;
    }
  }
  if (keyCode == DOWN){
    for(int i = 0; i < ys.length; i++){
      ys[i]+=yMod;
    }
  }
  if (keyCode == LEFT){
    for(int i = 0; i < xs.length; i++){
      xs[i]-=xMod;
    }
  }
  if (keyCode == RIGHT){
    for(int i = 0; i < xs.length; i++){
      xs[i]+=xMod;
    }
  }
}
