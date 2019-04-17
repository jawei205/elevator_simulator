class graphics {
  void show() {

    //draw the line from top to bottom
    strokeWeight(4);
    stroke(255);
    line(width/2, 10, width/2, 999);

    //draw the door at the bottom
    fill(255);
    rectMode(CENTER);
    stroke(255);
    strokeWeight(5);
    rect(width/2, 945, 150, 110);

    //draw the door at the top
    fill(255);
    rectMode(CENTER);
    stroke(255);
    strokeWeight(5);
    rect(width/2, 65, 150, 110);
    
    //show the source of the music
    textSize(10);
    text("Music:YouTube/Jemandzockt",3,990);
  }
}
