float L=2.5;
int Z=100;
PImage haeWon;

void setup() {
  size(500, 500);
  //background(circleSize);
  haeWon=loadImage("111.jpg");
  haeWon.resize(500, 500);
}

void draw() {
  float circleNum=mouseX/10;
  float circleSize=width/circleNum;
  translate(circleSize/2, circleSize/2);


  background(255);

  for (int y=0; y<circleNum; y++) {
    for (int x=0; x<circleNum; x++) {
      
      color c =haeWon.get(int(x*circleSize),int(y*circleSize));
      float realSize=brightness(c);
      float finalSize=map(realSize,0,255,circleSize,circleSize);
      fill(c);
      noStroke();
      ellipse(x*circleSize, y*circleSize, finalSize, finalSize);
    }
  }
  //ellipse(mouseX, mouseY, circleSize, circleSize);
  // image(haeWon,0,0);
}
