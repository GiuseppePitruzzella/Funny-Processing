class Bike {
  float x, y, speed, dim;
  
  Bike(float x, float y, float speed) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    
    dim = 40;
  }
  
  void display() {
    strokeWeight(5);
    stroke(255, 255, 0);
    line(x, y - dim/2, x + dim + (dim/2), y - dim/2);
    noFill();
    circle(x, y, dim);
    circle(x + dim + (dim/2), y, dim);
  }
  
  void move() {
    x += speed;
    if (x > width) x = 0;
  }
  
  void run() {
    move();
    display();
  }
}
