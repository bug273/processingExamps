/*
* Dibuja un circulo y una linea continua
* el circulo se crea mientras se mueve el cursor 
* sobre la superficie creada
* Circle+Line
*/

float y = 0.0;

void setup(){
  size(400, 150);
}
void draw(){
  y = y + 5;
  if (y > 150){
    y = y-100;
  }
  line(0, y , 400, y);
  stroke(10,50,190,40);
  ellipse(mouseY*0.4, mouseX*0.4, mouseX, mouseY);
  println(frameCount);
  println(mouseX + " : " + mouseY);
  frameRate(3);
}