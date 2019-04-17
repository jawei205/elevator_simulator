//Objects
graphics graphics;
door door;
cabin cabin;
Timer timer;

//timers
Timer startDown;
Timer startUp;

//load the elevator music
import processing.sound.*;
SoundFile sound;

void setup() {
  size(450, 1000);
  graphics = new graphics();
  cabin = new cabin();
  door = new door();
  timer = new Timer(0);

  //reset the timers
  timer.reset();
  
  //load the music
  sound = new SoundFile(this,"ElevatorMusic.mp3");
  sound.play();
}
void draw() {
  background(0);
  graphics.show();
  cabin.show();
  door.show();
  cabin.setSpeed();
}
