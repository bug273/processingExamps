/**
* Loops y bucles while y for
**/

int counter = 0;
int y = 20 + (counter * 5);
void setup(){
  size(150, 150);
  background(23, 109,122);
  strokeWeight(0.3);
}

void draw(){
  while (counter < 12){
    int y = 20 + (counter * 5);
    line(20, y*3, 120, sin(y*15));
    counter +=1;
  }
  for (int i = 35; i < 140; i +=10){
    line(i, sin(y*15), i, 130);
  }
}