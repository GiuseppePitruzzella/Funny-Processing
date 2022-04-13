class Girl extends Boy {
  Girl(float x, float y, float speed) {
    super(x, y, speed);
  }
  void display() {
    strokeWeight(5);
    fill(255);
    stroke(255);
    ellipse(x, y, 20, 20);
    line(x, y, x, y + 50);
    line(x - 20, y + 20, x + 20, y + 20);
    line(x, y + 50, x + 15, y + 65);
    line(x, y + 50, x - 15, y + 65);
    triangle(x - 20, y + 40, x, y + 30, x + 20, y + 40);
  }
  void move() {
    x -= speed;
    if (x > width || x < 0) speed = -speed;
  }
  void run() {
    display();
    move();
  }
}
