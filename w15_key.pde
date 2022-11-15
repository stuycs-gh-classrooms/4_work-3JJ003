int[] xvals, yvals;
int MAX_POINTS = 1000, numPoints;

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[MAX_POINTS];
  yvals = new int[MAX_POINTS];
  numPoints = 0;

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
  if (key == CODED){
    moveLines(xvals, yvals, 5, 5);
  }
}

void drawLines(int[] xs, int[] ys) {
  stroke(255);
  strokeWeight(3);
  for (int i=1; i < numPoints; i++) {
    line(xs[i-1], ys[i-1], xs[i] ,ys[i]);
  }
}

void moveLines(int[] xs, int[] ys, int xMod, int yMod){
  if (keyCode == UP){
    for(int i = 0; i < yvals.length; i++){
      yvals[i]-=yMod;
    }
  }
  if (keyCode == DOWN){
    for(int i = 0; i < yvals.length; i++){
      yvals[i]+=yMod;
    }
  }
  if (keyCode == LEFT){
    for(int i = 0; i < yvals.length; i++){
      xvals[i]--;
    }
  }
}
