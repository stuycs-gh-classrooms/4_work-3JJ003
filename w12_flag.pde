//Jasper Li, Jordan Leung, Jonatan Yap
void setup() {
  size(800, 800);
  noStroke();
  colorMode(RGB, 800);
for (int i = 0; i < 800; i++) {
  for (int j = 0; j < 800; j++) {
    stroke(i, j, 800);
    point(i, j);
}
}
}
int x = 0;
int y = 0;
int offsetX1 = 400;
int offsetY1 = 400;
void draw() { 
  fill(#D41F39);
  ellipse(271, 282, 100, 50);
  ellipse(145, 282, 100, 50);
  fill(#FFAAD6);
  circle(100, 220, 50);
  circle(300, 220, 50);
  circle(200,200, 200);

  fill(0);
  //ellipse(230, 175, 25, 50);
  //ellipse(180, 175, 25, 50);
  fill(0, 118, 192);
  stroke(0);
  strokeWeight(3);
  ellipse(230, 175, 25, 60);
  ellipse(180, 175, 25, 60);
  noStroke();
  fill(0);
  ellipse(230, 170, 25, 50);
  ellipse(180, 170, 25, 50);
  fill(255);
  ellipse(230, 167, 20, 35);
  ellipse(180, 167, 20, 35);
  fill(235,103,150);
  ellipse(260, 220, 20, 15);
  ellipse(150, 220, 20, 15);
  noFill();
  stroke(0);
  arc(208, 230, 20, 10, 0, PI);
  noStroke();
  if (keyPressed){
    if (key == 'a') {
      x = x - 1;
      println(x);
    }
    if (key == 'd') {
      x = x + 1;
      println(x);
    }
    if (key == 'w') {
      y = y - 1;
      println(y);
    }
    if (key == 's') {
      y = y + 1;
      println(y);
    }
  }
  fill (#BCBABA);
ellipse (200 + offsetX1, 150, 300, 300);
ellipse (200+ offsetX1, 335, 50, 50);
ellipse (125+ offsetX1, 335, 50, 50);
ellipse (275+ offsetX1, 335, 50, 50);
//teeth? #1
beginShape ();
vertex(250+ offsetX1, 335);
vertex(250+ offsetX1, 245);
vertex(300+ offsetX1, 245);
vertex(300+ offsetX1 ,335);
endShape(CLOSE);
//teeth 2
beginShape ();
vertex (100+ offsetX1, 335);
vertex (100+ offsetX1, 245);
vertex (150+ offsetX1, 245);
vertex (150+ offsetX1, 335);
endShape (CLOSE);
//teeth 3
beginShape ();
vertex (225+ offsetX1, 245);
vertex (225+ offsetX1, 335);
vertex (175+ offsetX1, 335);
vertex (175+ offsetX1, 245);
endShape (CLOSE);
//eyes
fill (#FF1212);
ellipse (250+ offsetX1, 100, 50, 60);
ellipse (150+ offsetX1, 100, 50, 60);
//mouth

//fill(#BBE894);
//rect(0, 399, 800, 125);

stroke(0);
fill(#000000);
circle(400,150 + offsetY1,75);
line(400, 180+ offsetY1, 400, 350+ offsetY1);
line(400, 220+ offsetY1, 300, 300+ offsetY1);
line(400, 220+ offsetY1, 500, 300+ offsetY1);
line(400, 350+ offsetY1, 280, 450+ offsetY1);
line(400, 350+ offsetY1, 520, 450+ offsetY1);
}
