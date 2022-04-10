Balloon B;
Balloon C;
void setup() {
  size(512, 512);
  B = new Balloon(random(0, 512), random(0, 256), random(-5, 5), 50, 200);
  C = new YellowBalloon(random(0, 512), random(0, 256), random(-5, 5), 50, 200);
}
void draw() {
  background(200, 200, 255);
  B.run();
  C.run();
}
void keyTyped() {
  if (key == 'r') setup();
}
  
