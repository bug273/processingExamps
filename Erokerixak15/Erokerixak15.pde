import java.util.Random;
float t =0;

Random generator;

void setup(){
  size(400,300);
  generator = new Random();
  frameRate(10);
}

void draw() {
  background(200);
  float h = (float) generator.nextGaussian();
  h = h*10;
  h = h+100;
  
  t =  t + 0.1;
  
  fill(0);
  ellipse(width/2,height/2,h*0.44,h+0.4);
  
  float x = noise(t);
  x = map(x,0,1,0, width);
  ellipse(x, height/2,40,40);
  
}