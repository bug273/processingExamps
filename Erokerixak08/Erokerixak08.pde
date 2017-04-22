int gray = 0;
void setup(){
  size(100,100);
  fill(0, 103);
}

void draw(){
}

void mousePressed(){
  gray += 20;
  rect(mouseX, mouseY, 33,33);
}

void mouseReleased(){
  gray *= 15;
  rect(mouseY, mouseX, cos(mouseY*22),22);
}