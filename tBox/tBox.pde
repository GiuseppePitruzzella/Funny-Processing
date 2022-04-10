PImage img;
int h;
void setup() {
  size(512, 256);
  img = loadImage("lena.png");
  img.filter(GRAY);
  img.resize(256, 256);
  h = int(random(16, 256));
}
void draw() {
  image(img, 0, 0);
  
  image(tbox(img, h), 256, 0);
}

PImage tbox(PImage im, int h) {
  PImage in = im.copy();
  int n = h * 2;
  for (int y = h; y < n; y++) {
    for (int x = h; x < n; x++) {
      if (x > y)
        in.set(x, y, color(150, 150, 150));
    }
  }
  return in;
}
void keyTyped() {
  if (key == 'r')
    setup();
}
