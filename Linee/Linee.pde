PImage img;
int h, k, n;
void setup() {
  size(768, 256);
  img = loadImage("lena.png");
  img.resize(256, 256);
  
  h = int(random(1, 256));
  k = int(random(1, 256));
  n = int(random(5, 15));
}
void draw() {
  image(img, 0, 0);
  image(linee(img.copy(), h, k), 256, 0);
  image(linee2(img.copy(), h, k, 100), 512, 0);
}

PImage linee(PImage in, int h, int k) {
  for (int i = 0; i < 256; i++) {
    in.set(i, h, color(255, 255, 0));
    in.set(i, k, color(255, 255, 0));
    in.set(h, i, color(255, 255, 0));
    in.set(k, i, color(255, 255, 0));
  }
  return in;
}
PImage linee2(PImage in, int h, int k, int n) {
  in.set(n, n, massimo(in.get(n, n, n, n), 10));
  for (int i = 0; i < 256; i++) {
    in.set(i, h, color(255));
    in.set(i, k, color(255));
    in.set(h, i, color(255));
    in.set(k, i, color(255));
  }
  return in;
}
PImage massimo(PImage im, int n) {
  PImage r = im.copy();
  r.loadPixels();
  PImage tmp;
  float [] tmpF = new float[n*n];
  int off = n/2;
  for (int x=0; x<im.width; x++) {
    for (int y=0; y<im.height; y++) {
      tmp = im.get(x-off, y-off, n, n);
      tmp.loadPixels();
      for (int i=0; i<tmp.pixels.length; i++) tmpF[i] = red(tmp.pixels[i]);
      r.set(x, y, color(max(tmpF)));
      r.updatePixels();
    }
  }
  return r;
}
void keyTyped() {
  if (key == 'r')
    setup();
}
