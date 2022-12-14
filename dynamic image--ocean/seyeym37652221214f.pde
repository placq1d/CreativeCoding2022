import java.util.*;
import processing.pdf.*;
boolean savePDF = false;

float tileCount = 30;
int heartSize = 50;

int actRandomSeed = 0;

void setup() {
  size(600, 600);
}

void draw() {
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");

  translate(width/tileCount/8, height/tileCount/8);

  colorMode(HSB, 360, 100, 100, 100);
  background(0);
  smooth();
  stroke(255);
  strokeWeight(1);
  
   fill(233,98,99);
   
  randomSeed(actRandomSeed);

  for (int gridY=0; gridY<tileCount; gridY++) {
    for (int gridX=0; gridX<tileCount; gridX++) {
      float posX = width/tileCount * gridX;
      float posY = height/tileCount * gridY;

      float shiftX1 =  random(-1, 1) * mouseX/20;
      float shiftY1 =  random(-1, 1) * mouseY/20;
      float shiftX2 = mouseX/40 * random(-1, 1);
      float shiftY2 = mouseY/40 * random(-1, 1);
      float shiftX3 = mouseX/60 * random(-1, 1);
      float shiftY3 = mouseY/60 * random(-1, 1);
     

      beginShape();
      vertex(posX+shiftX1, posY+shiftY1);
      vertex(posX+heartSize+shiftX2, posY+shiftY2);
      vertex(posX+heartSize+shiftX3, posY+heartSize+shiftY3);
      vertex(posX+shiftX1, posY+heartSize+shiftY1);
      endShape(CLOSE);
    }
   
  }
  if (savePDF) {
    savePDF = false;
    endRecord();
  }
}


void mousePressed() {
  actRandomSeed = (int) random(10000);
}

void keyReleased() {

  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");
  if (key == 'p' || key == 'P') savePDF = true;
}

String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
