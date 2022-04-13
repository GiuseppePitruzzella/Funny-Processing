PImage in, in_1;
float r;
void setup() {
  size(512, 256);
  in = loadImage("lena.png");
  in.resize(256, 256);
  r = random(0, 1);
  in_1 = in.copy();
  image(in, 0, 0);
  image(colors(wow(in_1), r), 256, 0);
}

void draw() {}

PImage wow(PImage I){
    PImage R =I.copy();
    I.loadPixels();
    R.loadPixels();
    int x=I.width/2; int y=0;
    for(int i=0; i<I.width/2; i++){
       for(int j=0; j<I.height; j++){
           R.set(x,y,(I.get(i,j)));
           y++;
       }
       y=0;
       x++;
    }
    x=0; y=0;
    for(int i=I.width/2; i<I.width; i++){
       for(int j=0; j<I.height; j++){
           R.set(x,y,(I.get(i,j)));
           y++;
       }
       y=0;
       x++;
    }
    R.updatePixels();
    return R;
}
PImage colors(PImage img, float r) {
  PImage out = createImage(256, 256, RGB);
  out.loadPixels();
  for (int i = 0; i < out.pixels.length * r; i++)
    out.pixels[i] = color(green(img.pixels[i]), red(img.pixels[i]), blue(img.pixels[i]));
  for (int i = int(out.pixels.length * r); i < out.pixels.length; i++)
    out.pixels[i] = color(blue(img.pixels[i]), green(img.pixels[i]), red(img.pixels[i]));
  out.updatePixels();
  return out;
}
void keyTyped() {
  if (key == 'r' || key == 'R') setup();
}
