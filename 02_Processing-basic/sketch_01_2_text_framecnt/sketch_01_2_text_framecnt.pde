void setup() {
  size(300,300); //set window size(weight(300), height(300))
 
}

void draw() {
  
  background(255,255,255);  //set background color(r(255), g(255), b(255))
  fill(0);   //text color(0)
  
  text("Hello Strings! " + str(frameCount),10,50); //print text("Hello Strings!") + framecount & (position of x(10), position of y(50))
  //String buf = String.format("%06d", frameCount);
  //text(buf, 10,50);
  
  
  fill(255/2);      //set text color(255/2)
  text("Hello Strings!",10,100); //print text("Hello Strings!") & (position of x(10), position of y(100))
  fill(255/3);      //set text color(255/3)
  text("Hello Strings!",10,150); //print text("Hello Strings!") & (position of x(10), position of y(150))
}
