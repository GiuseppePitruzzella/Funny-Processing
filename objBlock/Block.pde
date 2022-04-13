class Block {
  float x, y, w, h, sx;
  Block(float x, float y, float w, float h, float sx) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.sx = sx;
  }
  Block(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.sx = 4;
  }
  void display() {
    noStroke();
    fill(0, 255, 0);
    rect(x, y, w, h);
  }
  void move() {
    x += sx;
    if (x > width - w || x < 0)
      sx = -sx;
  }
  void run() {
    display();
    move();
  }
}
