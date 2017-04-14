int num = 20*3;
int[] dx = new int[num]; // declara y crea un array con '[]'
int[] dy = new int[num];

void setup(){
  size(100,100);
  for(int i = 0; i < num; i++){
    dx[i] = i * 5;
    dy[i] = 12 + (i * 6);
  }
}

void draw() {
  background(221,190,70);
  for (int i = 0; i < num; i++){
    dy[i] = dy[i] + 1;
    if (dy[i] > 100) {
      dy[i] = -100;
    }
    diagonals(dy[i], dx[i]);
    diagonals(dx[i], dy[i]);
  }
}

void diagonals(int x, int y){
  strokeWeight(0.1);
  line(x, y, x+20, y-40);
  strokeWeight(0.3);
  line(x+10, y, x+30, y-40);
  strokeWeight(0.2);
  line(x+20, y, x+40, y-40);
}