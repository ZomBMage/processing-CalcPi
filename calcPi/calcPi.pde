final int size = 1000;
double circ = 0;
double total = 0;

void setup() {
  size(1020,1020); // change manually, processing's dumb :/
  rectMode(CENTER);
  rect((size + size/20)/2,(size + size/20)/2,size,size);
  ellipse((size + size/20)/2,(size + size/20)/2,size,size);
}

void draw() {
  for (int i=0;i<20000;i++) {
    double x = random(size/40,size+size/40);
    double y = random(size/40,size+size/40);
    float o = size/2+size/40;
    double dx = abs(o - (float)x);
    double dy = abs(o - (float)y);
    if (dx*dx + dy*dy <= size*size/4) {
      stroke(255,0,0);
      point((float)x,(float)y);
      circ++;
    }
    else {
      stroke(0,100,255);
      point((float)x,(float)y);
    }
    total++;
  }
  print(circ/total*(double)4);
  print("\n");
}
