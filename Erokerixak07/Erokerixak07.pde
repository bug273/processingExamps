int x = 20;
void setup(){
  size(200,200);
  textSize(80);
}

void draw(){
  background(126);
  if (mousePressed == true){
    fill(255); // blanquete
  } else {
    fill(0);  // negrufo
  }
  rect(50, 50, 100, 100);
  
  if(keyPressed == true){
    strokeWeight(5);
    x++;
    line(20, x, 80, 80);
  } else {
    rect(80, 80, cos(x*3), 40);
  }
  stroke(12,159,423);
  text(key, 5, 150);
}