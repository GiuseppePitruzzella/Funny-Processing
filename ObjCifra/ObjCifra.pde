Cifra C;
ArrayList<Cifra> Cifre;
void setup() {
  size(512, 512);
  C = new Cifra(random(0, 512), 50, random(2, 10));
  Cifre = new ArrayList<Cifra>();
}
void draw() {
  background(0);
  for (Cifra C : Cifre)
    C.run();
}
void keyTyped() {
  if (key >= '0' && key <= '4')
    Cifre.add(new Cifra(random(0, 512), 0, random(2, 10)));
  else if (key >= '5' && key <= '9')
    Cifre.add(new Cifrotta(random(0, 512), 0, random(2, 10)));
}
