float[] Dbrightness = new float[1024];
float[] Dx = new float[32];
float[] Dy = new float[32];


void setup() {
  size(32, 32);
  for (int i = 0; i < 1024; i++) {
    Dbrightness[i] = random(10, 80);
  }
  for (int i = 0; i < 32; i++) {
    Dx[i] = i;
    Dy[i] = i;
  }
}

void draw() {
  background(10);
  for (int i = 0; i < 1024; i++) {
    stroke(Dbrightness[i]);
    point(Dx[i%32], Dy[floor(i/32)]);
  }
  for (int i = 0; i < 32; i++) {
    if (Dx[i] <= 15.5) {
      Dx[i] -= 0.1;
      if (Dx[i] < 0) {
        Dx[i] = 15.5;
      }
    }
    if (Dx[i] > 15.5) {
      Dx[i] += 0.1;
      if (Dx[i] > 31) {
        Dx[i] = 15.6;
      }
    }
    Dy[i] -= 0.1;
    if (Dy[i] < 0) {
      Dy[i] = 31;
    }
  }
}
