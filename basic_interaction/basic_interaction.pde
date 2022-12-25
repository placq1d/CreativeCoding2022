import controlP5.*;
boolean background=true;

CtWindow[] cw;

float eX, eY, eD;
int fR, fG, fB;

void setup() {
  size(800, 800);
  cw = new CtWindow[2];
  cw[1] = new CtWindow(this, 400, 200, "control Panel", 1);
}

void draw() {
  background(0);
  noStroke();
  fill(fR, fG, fB);
  ellipse(eX, eY, eD, eD);
  updateBackground();
  rect(width/2, height/2, 100, 50);
}


void updateBackground() {
  if (background) {
    background(0);
  } else {
    background(255);
  }
}

boolean isMouseOver (int x, int y, int w, int h) {
  if (mouseX>=x && mouseX<=x+w && mouseY<=y+h) {
    return true;
  }
  return false;
}


void mousePressed() {
  if (isMouseOver(width/2, height/2, 100, 50)==true) {
    println("Mouse pressed button");
    background= !background;
  }
}
