//State variable constants
int DIRT = 0;
int FIRE = 1;
int BURNT = 2;
int GRASS = 3;

//Helpful color values
color DIRT_COLOR = #81582F;
color FIRE_COLOR = #f20C0C;
color BURNT_COLOR = #810707;
color GRASS_COLOR = #49B90D;

//Driver variables
boolean burning = false;
int grassDensity = 75;
int numTracts = 10;
int tractLength = 20;
Land[][] grid;


void setup() {
  size(700, 350);
  frameRate(5);
  grid = new Land[numTracts][tractLength];
  setupLand(grid, 6,tractLength, grassDensity);
  showLand(grid); 
}//setup

void draw() {
  showLand(grid);
  if (burning) {
    for (int r=0; r < grid.length; r++) {
      liveFire(grid);
    }//for
  }//burning
}//draw


void setupLand(Land[][] field, int numRows, int numPlots, float density) {
  //figure out size of each plot of land
  int plotSize = width / numPlots;

  //instantiate each Land object
  for (int i=0; i<field.length; i++) {
    int type = DIRT;

    //first Land object should be FIRE
    if (i == 0) {
      type = FIRE;
    }//start with fire

    //Chance for grass is based on density
    else if (random(100) < density) {
      type = GRASS;
    }//grass land

    //creates a new land at (x, y) with size plotSize and type
    for(int j=0; j<field[i].length; j++) {
      field[i][j] = new Land(i*plotSize, j*plotSize, plotSize, type);
    }//forj
  }//setup loop
}//setupLand
void showLand(Land[][] field) {
for (int r=0; r < field.length; r++) { //loop over each or the arrays
  for(int i=0; i < field[r].length; i++) { //loop over each element in each array
    field[r][i].display();
  }//for i
}//for r
}//showLand


void liveFire(Land[][] field) {
  //First, check Land objects to the left, apply state change rules.
  //Assume nothing useful to the left of row[0]
  for (int i=0; i<field.length; i++) {
    for(int j=0; j<field[i].length; j++) {
        field[i][j].updateNextState(0);
      if(j==0) {
        field[i][j].updateNextState(field[i][j].state);
      }
      else {
        field[i][j].updateNextState(field[i][j+1].state);
      }
      //Based on potential state changes from updateNextState
      field[i][j].changeState();
    }
  }//change states
}//liveFire





void keyPressed() {
  if (key == ' ') {
    burning = !burning;
  }//start burning
  else if (key == 'r') {
    burning = false;
    for (int i=0; i < grid.length; i++) {
      for(int j=0; j<grid[i].length; j++) {
        setupLand(grid, j*tractLength, grassDensity, i);
      }//forj
    }//fori
  }//else if
}//keyPressed
