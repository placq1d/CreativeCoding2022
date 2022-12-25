class CtWindow extends PApplet {
  PApplet parent;
  ControlP5 cp;
  int ww;
  int wh;
  String name;
  int index;

  CtWindow(PApplet pa, int w, int h, String n, int ind) {
    super();
    parent = pa;
    ww = w;
    wh = h;
    name = n;
    index = ind;
    PApplet.runSketch(new String[]{this.getClass().getName()}, this);
  }

  void settings() {
    size(ww, wh);
  }

  void setup() {
    cp = new ControlP5(this);
    surface.setTitle(name);
    surface.setLocation(200+420*index, 10);


    if (index == 1) {//color palette
      cp.addSlider("fillRed")
        .plugTo(parent, "fR")
        .setRange(0, 255)
        .setValue(105)
        .setPosition(250, 30)
        .setSize(100, 30);

      cp.addSlider("fillGreen")
        .plugTo(parent, "fG")
        .setRange(0, 255)
        .setValue(105)
        .setPosition(250, 70)
        .setSize(100, 30);

      cp.addSlider("fillBlue")
        .plugTo(parent, "fB")
        .setRange(0, 255)
        .setValue(105)
        .setPosition(250, 110)
        .setSize(100, 30);
    }
  }

  void draw() {
    background(0);
    if (index == 0) {
      pushStyle();
      noFill();
      stroke(51);
      rect(20, 20, height, height-40);
      popStyle();
    }
    
    if(index == 1){
      pushStyle();
      fill(fR, fG, fB);
      stroke(51);
      rect(20, 20, height, height-40);
      popStyle();
    }
  }
}
