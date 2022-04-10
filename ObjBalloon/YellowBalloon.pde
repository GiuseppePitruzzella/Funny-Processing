class YellowBalloon extends Balloon {
  YellowBalloon(float x, float y, float speed, float w, float h) {
    super(x, y, speed, w, h);
    
    c_1 = color(255, 255, 0);
    c_2 = color(0, 0, 255);
  }
  
  void display() {
    strokeWeight(5);
    stroke(c_2);
    line(x, y, x, y + h);
    fill(c_1);
    ellipse(x, y, w, w * 2);
  }
  
  void move() {
    if (dist(mouseX, mouseY, x, y) > w / 2)
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
