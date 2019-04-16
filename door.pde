class door {
  //Door at the bottom
  float door1X1 = width/2 + 50;
  float door1X2 = width/2 - 50;
  float door1Y1 = 950;
  float door1Y2 = 950;

  //Door at the top
  float door2X1 = width/2 + 25;
  float door2X2 = width/2 - 25;
  float door2Y1 = 70;
  float door2Y2 = 70;

  void show() {
    rectMode(CENTER);
    strokeWeight(5);
    stroke(51);
    fill(0, 0, 255);
    //draw the bottom doors at his normal position
    rect(door1X1, door1Y1, 50, 90); 
    rect(door1X2, door1Y2, 50, 90);

    // draw the top doors at his normal position
    fill(0, 0, 255);
    rect(door2X1, door2Y1, 50, 90);
    rect(door2X2, door2Y2, 50, 90);
  } 
  //close door 1
  void closeDoor1() {
    door1X1 = width/2 + 25;
    door1X2 = width/2 - 25;
    door1Y1 = 950;
    door1Y2 = 950;
  }
  //open door 1
  void openDoor1() {
    door1X1 = width/2 - 50;
    door1X2 = width/2 + 50;
    door1Y1 = 950;
    door1Y2 = 950;
  }
  //close door 2
  void closeDoor2() {
    door2X1 = width/2 + 25;
    door2X2 = width/2 - 25;
    door2Y1 = 70;
    door2Y2 = 70;
  }
  //open door 2
  void openDoor2() {
    door2X1 = width/2 + 50;
    door2X2 = width/2 - 50;
    door2Y1 = 70;
    door2Y2 = 70;
  }
}
