Block B, AB;
float x, y, w, h;
void setup() {
  size(512, 512);
  w = h = random(40, 60);
  x = random(0, width - w);
  y = random(0, height / 2);
  B = new Block(x, y, w, h);
  x = random(0, width - w);
  y = random(0, height / 2);
  AB = new AmazingBlock(x, y, w, h);
}
void draw() {
  background(255);
  B.run();
  AB.run();
}
void keyTyped() {
  if (key == 'r') setup();
}
