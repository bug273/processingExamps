void setup() {
  size(200,200);
}
float y = 0.0;
float n = 0.0;
int u = 1;
void draw(){
  background(y * 2.4);
  strokeWeight(0.2);
  line(0,y,200,y);
  strokeWeight(0.8);
  line(u,cos(y*0.37),200,sq(y*0.77));
  fill(189, 10,40,40);
  ellipse(155, y+57, 70, 70);
  n = n * 0.5;
  if (n > 200){
  n = n - height;}
  u = u +1;
  if (u > 200){
  u = u - width;}
  y = y + 2;
  if (y > 200){
  y = y - height;}
  frameRate(7);
  println(frameCount);
}