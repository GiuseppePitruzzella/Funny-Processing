PImage in;
void setup() {
  size(512, 256);
  in = loadImage("lena.png");
  in.resize(256, 256);
}

void draw() {
  image(in, 0, 0);
  image(wow(in.copy()), 256, 0);
}

PImage wow(PImage img) {
  PImage out = createImage(256, 256, RGB);
  PImage up = img.get(0, 0, 256, 128);
  PImage down = img.get(0, 128, 256, 256);
  color c;
  out.loadPixels();
  for (int i = 0; i < out.pixels.length / 2; i++) {
    out.pixels[i] = color(255, 255, blue(down.pixels[i]));
    out.pixels[i + (128 * 256)] = color(red(down.pixels[i]), green(down.pixels[i]), 255);;
  }
  out.updatePixels();
  return out;
}
