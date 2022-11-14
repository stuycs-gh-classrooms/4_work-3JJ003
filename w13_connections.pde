int[] xvals, yvals;
int numPoints;

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;
  
  makeLines(xvals, yvals, 10);
  drawLines(xvals, yvals);
}

void makeLines(int[] xs, int[] ys, int points) {
  numPoints+=points;
  if ((numPoints >= xs.length-10) || (numPoints >= ys.length-10)) {
    exit();
  }
  for (int i = 0; i <= numPoints; i++){
    xs[i] = int(random(0, width-1));
    ys[i] = int(random(0, height-1));
  }
}

void drawLines(int[] xs, int[] ys) {
  stroke(255);
  for(int i = 0; i <= numPoints; i++) {
    line(xs[i], ys[i], xs[i+1], ys[i+1]);
  }
}
