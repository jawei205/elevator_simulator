class cabin {
  float x = width/2;
  float y = 970;
  float yspeed = 0;
  boolean cabinUp = false;

  void show() {
    rectMode(CENTER);
    fill(0);
    stroke(255, 0, 0);
    strokeWeight(2.3);
    rect(x, y, 35, 45);
  }
  void setSpeed() {
    //initialize the speed
    y = y + yspeed;

    //check if the y pos of the cabin is over the limit
    if (y <= 90) {
      cabinUp = true;
      yspeed = 0;
      door.openDoor2(); // open door 2
    }
    if (cabinUp == true) {    
      //start the cabin after the timer gets below 0
      startUp.countDown();
      if (startUp.getTime() < 0) {
        yspeed = 2;
        timer.reset();
        door.closeDoor2(); // close door 2
      }
      //slow down the cabin
      if (y >= 860) {
        yspeed = 1;
      }
      //stop the cabin
      if (y >= 970) {
        yspeed = 0; 
        cabinUp = false;
        door.openDoor1(); //open door 1
      }
    }
    //start the cabin after the timer gets below 0
    if (cabinUp == false) {
      startDown.countDown();
      if (startDown.getTime() < 0) { 
        yspeed = -2;
        timer.reset();
        door.closeDoor1(); // close door 1
      }
      //slow down the cabin
      if (y <= 160) {
        yspeed = -1;
      }
    }
  }
}
