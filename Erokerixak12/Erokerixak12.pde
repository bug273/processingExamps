/*
* Dibuja tres conjuntos de lineas que se mueven de izq a der
* a travez de toda la pantalla 
* Floating lines 
*/

Diagonals da, db, dc;
int num = 20;

void setup(){
  size(500, 150);
  da = new Diagonals(0, 80, 1, 2, 0);
  db = new Diagonals(0, 44, 2, 6, 40);
  dc = new Diagonals(0, 122, 3, 1, 60);
  stroke(180,20,0);
}

void draw(){
  background(11, 230, 123, 40);
  da.update();
  db.update();
  dc.update();
}

class Diagonals {
  int x, y, speed, thick, gray;
  
  Diagonals(int xpos, int ypos, int s, int t, int g) {
    x = xpos;
    y = ypos;
    speed = s;
    thick = t;
    gray = g;
  }
  
  void update(){
    strokeWeight(thick);
    line(x, y, x+20, y-40);
    line(x+10, y, x+30, y-40);
    line(x+20, y, x+40, y-40);
    x = x + speed;
    if(x > 500) {
      x = -100;
    }
  }
}