//Objects
graphics graphics;
door door;
cabin cabin;
Timer timer;

//timers
Timer startDown;
Timer startUp;

void setup() {
  size(450, 1000);
  graphics = new graphics();
  cabin = new cabin();
  door = new door();
  timer = new Timer(0);

  //reset the timers
  timer.reset();
}
void draw() {
  background(0);
  graphics.show();
  cabin.show();
  door.show();
  cabin.setSpeed();
}
