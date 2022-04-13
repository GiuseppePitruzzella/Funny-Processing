class Boy {
  float x, y, speed;
  Boy(float x, float y, float speed) {
    this.x = x;
    this.y = y;
    this.speed = speed;
  }
  void display() {
    strokeWeight(5);
    fill(255, 255, 0);
    stroke(255, 255, 0);
    ellipse(x, y, 20, 20);
    line(x, y, x, y + 50);
    line(x - 20, y + 20, x + 20, y + 20);
    line(x, y + 50, x + 15, y + 65);
    line(x, y + 50, x - 15, y + 65);
  }
  void move() {
    x += speed;
    if (x > width || x < 0) speed = -speed;
  }
  void run() {
    display();
    move();
  }
}
