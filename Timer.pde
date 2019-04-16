class Timer {
  float Time;

  Timer(float set) {
    Time = set;
  }
  float  getTime() {
    return(Time);
  }
  void setTime(float set) {
    Time = set;
  }
  void countDown() {
    Time -= 1/frameRate;
  }
  void reset() {
    startDown = new Timer(5);
    startUp = new Timer(5);
  }
}
