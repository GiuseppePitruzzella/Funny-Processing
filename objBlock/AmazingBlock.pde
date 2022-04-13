class AmazingBlock extends Block {
  float angle;
  AmazingBlock(float x, float y, float w, float h, float sx) {
    super(x, y, w, h, sx);
  }
  AmazingBlock(float x, float y, float w, float h) {
    super(x, y, w, h);
    this.angle = random(0, 360);
  }
  void display() {
    pushMatrix();
    translate(x, y);
    rotate(radians(angle));
    fill(color(angle%256, 255-angle%256, 255));
    rect(0, 0, w, h);
    popMatrix();
  }
  void move() {
    angle += 5;
    x += sx;
    if (angle >= 360) angle = 0;
    if (x > width || x < 0) sx = -sx;
  }
}
