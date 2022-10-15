//Submitted late because something wrong with my home wifi
int radius;
int lineCount;
int circleCount;

void setup() {
  size(600, 400);

  lineCount = 5;
  drawGrid(lineCount);

  circleCount = 6;
  radius = 25;
  circleRow(radius, height/2, circleCount, radius*2);
}

void drawGrid(int numLines) {
  int spacingX = width/(numLines+1);
  int spacingY = height/(numLines+1);

  int x = spacingX;
  int y = spacingY;
  for (int i = 0; i < numLines; i++) {
    line(x, 0, x, height);
    line(0, y, width, y);
    x += spacingX;
    y += spacingY;
  }
}

void circleRow(int startX, int startY, int numCircles, int d) {
  for (int i = 0; i < numCircles; i++) {
    circle(startX, startY, d);
    startX += d;
  }
}
