class Motorcycle extends Bike {
  Motorcycle(float x, float y, float speed) {
    super(x, y, speed);
    dim = 40;
  }
  void display() {
    PFont font = createFont("Montserrat.ttf", 24);
    textFont(font);
    text("81", x + dim/2, y - dim/2 - 5);
    strokeWeight(5);
    stroke(255);
    line(x, y - dim/2, x + dim + (dim/2), y - dim/2);
    noFill();
    circle(x, y, dim);
    circle(x + dim + (dim/2), y, dim);
  }
  void move() {
    x -= speed;
    if (x < 0) x = width;
  }
}
