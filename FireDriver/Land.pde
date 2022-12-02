class Land {
  int state;
  int nextState;
  int landX, landY;
  int landSize;
  color landColor;
  
  Land(int x, int y, int landBig, int landState) {
    this.landX = x;
    this.landY = y;
    this.landSize = landBig;
    this.state = landState;
    if (this.state == GRASS) {
      this.landColor = GRASS_COLOR;
    }//if
    else if (this.state == DIRT) {
      this.landColor = DIRT_COLOR;
    }//else if
    else if (this.state == FIRE) {
      this.landColor = FIRE_COLOR;
    }//else if
    else if (this.state == BURNT) {
      this.landColor = BURNT_COLOR;
    }//else if
  }//default constructor
 
  void display() {
    fill(this.landColor);
    square(this.landX, this.landY, this.landSize);
  }//display
 
  void changeState() {
    if (state == FIRE) {
      this.state = this.nextState;
      state = BURNT;
    }//if
  }//changeState
 
  void updateNextState(int previousState) {
    if (previousState == BURNT || previousState == GRASS || previousState == DIRT) {
      return;
    }//if
    else if (previousState == FIRE) {
      this.nextState = FIRE;
    }//else if
  }//updateNextState
}// Land
