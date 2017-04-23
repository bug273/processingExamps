/**
* Pinta un par de lineas que siguen la posición del cursor
* El fondo cambia de color y aparece un punto donde se ha 
* dado el click y todas las lineas se resetean.
* Si se mantiene el click el punto que se dibuja comenzara a dirigirse
* en sentido contrario de hacia donde moviemos el cursor
**/

int frame = 0;

void setup(){
  size(200,200);
  strokeWeight(0.2);
}

void draw(){
  line(mouseX, 0, mouseX, 200);
  line(0, mouseY, 200, mouseY);
  frame++;
  if(mousePressed == true){
    background(199, 100, 243, 199);
    cursor(MOVE);
    ellipse(mouseY,mouseX, 30, 30);
  }
}

void mousePressed(){
  loop();
  frame = 0;
}