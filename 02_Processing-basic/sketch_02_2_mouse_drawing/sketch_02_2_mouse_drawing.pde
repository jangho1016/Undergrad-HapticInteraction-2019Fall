int saveCount;

void setup() {
  size(500, 500); //set window size(weight(500), height(500))
  saveCount = 0; //initialize saveCount for zero
}

void draw() {
  background(204); //background color(204)
  line(0, 0, mouseX, mouseY); //draw line from (0,0) to where user clicked
}

void mousePressed() {
  //String filename = "line_" + str(frameCount) + ".jpg";
  String filename = "line_" + str(saveCount) + ".jpg"; //allocate file name into "line_" + saveCount
  
  saveCount = saveCount + 1; //add saveCount
  save(filename); //save file
  println("saved..." + filename); //print "saved" + filename
}
