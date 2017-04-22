/**
* Este ejercicio cambia el cursor por una cruz, 
* dibuja un par de lineas que siguen el cursor,
* y cuando se presion un boton del raton cambia
* el color de fondo por otro
**/

int frame = 0;
  
void setup(){
  size(100,100);
  noLoop();
  noCursor();
  strokeWeight(2);
}

void draw(){
  background(204);
  if(mousePressed == true){
    cursor(HAND);
    background(174,10,119, 193);
  } else {
    cursor(CROSS);
  }
  line(mouseX, 0, mouseX, 100);
  line(0, mouseY, 100, mouseY);
  frame++;
  ellipse(mouseX, mouseY, 10, 10);
}

void mousePressed(){
  loop();
  redraw();
  frame = 0;
}