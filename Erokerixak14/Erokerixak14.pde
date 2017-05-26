/*
* Perlin noise
* first try, modified from the P. webpage
*/

float noiseScale = 0.012;
void setup(){
  size(500,300);
}

void draw(){
  background(0);
  for (int x=0; x<width; x++){
    float noiseVal = noise((mouseY+x)*noiseScale, mouseX*noiseScale);
    stroke(noiseVal*255, 29, 49);
    line(x, mouseY+noiseVal*80, x, height);
  }
  for (int y=0; y<height; y++){
    float noiseVal = noise((mouseX+y)*noiseScale, (mouseY*3)*noiseScale);
    stroke(noiseVal*255, 29, 49, 146);
    line(y, mouseY+noiseVal*80, y, height);
  }
}