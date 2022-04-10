class Cifra {
  float x, y, speed;
  String num;
  Cifra(float x, float y, float speed) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    num = str(int(random(0, 9)));
  }
  
  void display() {
    PFont font = createFont("Montserrat.ttf", 32);
    textFont(font);
    fill(255, 255, 0);
    text(num, x, y);
  }
  
  void move() {
    y += speed;
    if (y > height) {
      y = 0;
    }
  }
  
  void run() {
    display();
    move();
  }
}
