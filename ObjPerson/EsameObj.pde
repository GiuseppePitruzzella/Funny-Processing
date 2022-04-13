ArrayList<Boy> B;
void setup() {
  size(500, 500);
  B = new ArrayList<Boy>();
}
void draw() {
  background(0);
  for (Boy item : B) item.run();
}
void keyTyped() {
  if (key == 'r') setup();
}
void mouseClicked() {
  if (mouseButton == LEFT)
    B.add(new Boy(random(0, width), random(0, height), random(2, 10)));
  else if (mouseButton == RIGHT)
    B.add(new Girl(random(0, width), random(0, height), random(2, 10)));
}
