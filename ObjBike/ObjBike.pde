Bike B;
ArrayList<Bike> Bikes;

void setup() {
  size(500, 500);
  Bikes = new ArrayList<Bike>();
}
void draw() {
  background(100);
  
  for (Bike B : Bikes) B.run();
}

void mouseClicked() {
  if (mouseButton == LEFT)
    Bikes.add(new Bike(random(0, 500), random(0, 500), random(2, 10)));
  else if (mouseButton == RIGHT)
    Bikes.add(new Motorcycle(random(0, 500), random(0, 500), random(2, 10)));
}

void keyTyped() {
  if (key == 'r')
    setup();
}
