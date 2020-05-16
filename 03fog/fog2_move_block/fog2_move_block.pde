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
  stroke(10);
  fill(5);
  beginShape();
  vertex(4, 32);
  bezierVertex(20, 26, 29, 27, 38, 32);
  endShape();
  
  beginShape();
  vertex(0, 10);
  bezierVertex(3, 6, 15, 9, 22, 17);
  bezierVertex(16, 18, 6, 15, 0, 15);
  endShape();
  
  beginShape();
  vertex(18, 9);
  bezierVertex(21, 7, 30, 3, 36, 6);
  bezierVertex(29, 11, 21, 9, 18, 10);
  endShape();
  
  
  

}
