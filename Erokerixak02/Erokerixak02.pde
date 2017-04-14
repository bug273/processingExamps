Diagonals da, db;

void setup() {
  size (300,300);
  da= new Diagonals(0, 80, 1, 2, 0);
  db = new Diagonals(0, 55, 3, 6, 255);
}

void draw(){
  background(123,155,229);
  da.update();
  db.update();
}
class Diagonals {
  int x, y, speed, thick, gray;
  Diagonals(int xpos, int ypos, int s, int t, int g){
    x = xpos;
    y = ypos;
    speed = s;
    thick = t;
    gray = g;
  }
  void update() {
    strokeWeight(thick);
    stroke(gray);
    line(x, y, x+20, y-40);
    line(x+10, y, x+30, y-40);
    line(x+20, y, x+40, y-40);
    x = x + speed;
    if (x > 100) {
      x = -100;
     } else {
       if (y < 20) {
         y = y*3;
       }
     }
  }
} 