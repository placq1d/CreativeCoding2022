import geomerative.*;

RShape grp;
RPoint[]points;


void setup() {
  size(1500, 1500);
  RG.init(this);
  grp=RG.getText("Creative Coding", "FreeSans.ttf", 200, CENTER);
}

void draw() {
  background(255);
  translate(width/2, height/2);

  //noStroke();
  //fill(250, 100, 0);
  //grp.draw();

  RG.setPolygonizer(RG.UNIFORMLENGTH);
  float length=map(constrain(mouseX,50,width-50), 50, width-50, 10, 200);
  RG.setPolygonizerLength(length);

  points=grp.getPoints();

  if (points!=null) {
    noFill();
    stroke(169,105,193);
    strokeWeight(2);
    beginShape();
    for (int i=0; i<points.length; i++) {
      vertex(points[i].x, points[i].y);
    }
    endShape();
  }
  fill(157,190,222);
    stroke(169,105,193);
  for (int i=0; i<points.length; i++) {
    ellipse(points[i].x, points[i].y, 10, 10);
   
  }
}
