float[] Lbrightness = new float[1024];
float[] Lx = new float[32];

void setup() {
  size(32, 32);
  for (int i = 0; i < 1024; i++) {
    Lbrightness[i] = random(10, 200);
  }
  for (int i = 0; i < 32; i++) {
    Lx[i] = i;
  }
}

void draw() {
  background(10);
  for (int i = 0; i < 1024; i++) {
    stroke(Lbrightness[i]);
    point(Lx[i%32], floor(i/32));
  }
  for (int i = 0; i < 32; i++) {
    Lx[i] -= 0.1;
    if (Lx[i] < 0) {
      Lx[i] = 31;
    }
  }
}
