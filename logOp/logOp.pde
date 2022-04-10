PImage img, img_1, img_2;
int h, k;
void setup() {
  size(768, 256);
  img=loadImage("lena.png");
  img.filter(GRAY);
  img.resize(256, 256);
  h = int(random(10, 70));
  k = int(random(10, 70));
  
  img_1 = _log(img);
  img_2 = logOp(img, h, k);
}
void draw() {
  image(img, 0, 0);
  image(img_1, 256, 0);
  image(img_2, 512, 0);
}
PImage _log(PImage im) {
  PImage result = im.copy();
  float r, g, b;
  result.loadPixels();
  float c = 255/log(1+255);
  for (int i=0; i<result.pixels.length; i++) {
    r = c*log(1+red(result.pixels[i]));
    g = c*log(1+red(result.pixels[i]));
    b = c*log(1+blue(result.pixels[i]));
    result.pixels[i] = color(r, g, b);
  }
  result.updatePixels();
  return result;
}
PImage logOp(PImage im, int h, int k) {
  PImage out = im.copy();
  int r = int(random(70, 256));
  for (int y = r; y < k + r; y++)
    for (int x = r; x < h + r; x++)
      out.set(x, y, color(0));
  return _log(out);
}
void keyTyped() {
  if (key == 'r') setup();
}
