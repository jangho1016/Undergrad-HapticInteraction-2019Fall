void setup() {
  size(100, 100); //set window size(weight(100), height(100))
}

void draw() {
  background(204); //background color(204)
  line(0, 0, mouseX, mouseY); //draw line from (0,0) to where user clicked  
}

void mousePressed() {
  save("line.jpg"); //save image named to line.jpg
  println("saved..."); //print("saved...")
}
