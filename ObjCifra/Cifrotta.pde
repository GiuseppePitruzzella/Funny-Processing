class Cifrotta extends Cifra {
  String num;
  int margin_x = 10; 
  int margin_y = 12;
  Cifrotta(float x, float y, float speed) {
    super(x, y, speed);
    num = str(int(random(0, 9)));
  }
  
  void display() {
    println(num, x, y);
    PFont font = createFont("Montserrat.ttf", 32);
    textFont(font);
    noFill();
    strokeWeight(3);
    stroke(255);
    circle(x + margin_x, y - margin_y, 64);
    fill(255);
    text(num, x, y);
  }
  
  void move() {
    y -= speed;
    if (y < 0) {
      y = height;
    }
  }
  
  void run() {
    display();
    move();
  }
}
