class Balloon {
  float x, y, w, h, speed;
  color c_1, c_2;
  Balloon(float x, float y, float speed, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.speed = speed;
    
    c_1 = color(random(0, 255), random(0, 255), random(0, 255));
    c_2 = color(255 - red(c_1), 255 - green(c_1), 255 - blue(c_1));
  }
  
  void display() {
    strokeWeight(5);
    stroke(c_2);
    line(x, y, x, y + h);
    fill(c_1);
    ellipse(x, y, w, w * 2);
  }
  
  void move() {
    x += speed;
    if (x > width) 
      x = 0;
    else if (x < 0)
      x = width;
  }
  
  void run() {
    display();
    move();
  }
}
