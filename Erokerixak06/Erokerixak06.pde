float x = 0.0;

void setup(){
  size(200,200);
}

void draw(){
  background(204,159,222, 189);
  if ( x < 80) {
    if ( x < 40){
      ellipse(mouseX,50,20,20);
    } else {
      ellipse(mouseY*3, mouseX,60,60);
    }
  } else {
    rect(20,20,60,mouseY);
  }
  line(x,0,x,100);
  x += 0.25;
  frameRate(13);
  println(mouseX + ": " + mouseY);
  float x = mouseX;
  float y = mouseY;
  float ix = width - mouseX;
  float iy = width - mouseY;
  fill(244, 160);
  ellipse(x, height/2, y, y);
  fill(0, 158);
  ellipse(ix, height/2, iy, iy);
  
  
}