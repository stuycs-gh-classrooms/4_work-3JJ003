size(800,500);
noStroke();
background(32,42,68);
fill(#ACF1FF);
rect(0, 0, 400, 500);

//background rays
fill(#59788E,65);
triangle(400, height/2, 800, 0, 650, 0);
triangle(400, height/2, 800, 125, 800, 225);
triangle(400, height/2, 800, 400, 750, 500);
fill(#9EC9D1, 65);
triangle(400, height/2, 0, 0, 150, 0);
triangle(400, height/2, 0, 125, 0, 225);
triangle(400, height/2, 0, 400, 50, 500);
stroke(0);
fill(#FFCC33);
circle(width/2,height/2,150);
fill(0);
textSize (30);
text("JERR", width/2-30, height/2+10);
