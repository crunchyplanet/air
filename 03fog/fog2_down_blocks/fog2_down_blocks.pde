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

  //noStroke();
  //fill(10);
  //ellipse(15, 16, 4, 4);
  //fill(20);
  //ellipse(15, 16, 8, 8);

  //blocks
  stroke(10);
  fill(5);
  beginShape();
  vertex(-1, 10);
  bezierVertex(8, 13, 8, 21, 18, 33);
  bezierVertex(-3, 30, -4, 24, -4, 4);
  endShape();
  
  beginShape();
  vertex(14, 24);
  bezierVertex(20, 17, 27, 14, 33, 20);
  bezierVertex(29, 24, 22, 22, 16, 26);
  endShape();
  
  beginShape();
  vertex(5, 8);
  bezierVertex(11, 2, 15, 1, 17, 11);
  bezierVertex(17, 15, 15, 13, 8, 14);
  endShape();
}
