PShape logo;
float x = 102;
float y = 0;

int w = 640;
int h = 720/2;

void setup() {
  size(1280, 720, P3D);
  logo = loadShape("KCAI_logo.svg");
  background(255);
} 

void draw() {
  shape(logo, w, h, 640, 440);
}

void mousePressed() {
  background(255);

  logo.resetMatrix();
  //logo.disableStyle();

  for (int i = int(random(0, 25)); i < 25; i++) {
    x = int(random(0, 255));
    logo.setFill(color(x));

    y = random(0.1, 0.5);
    logo.rotateY(y);
    logo.rotateZ(y);
    logo.scale(0.7);
    logo.translate(0, 0, i*-1);

    w = int(random(-300, 1000));
    h = int(random(-100, 400));
    shape(logo, w, h, 680, 440);
  }
}