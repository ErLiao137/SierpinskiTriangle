int l = 500;
int base = 1;
public void setup() {
  noFill();
  size(500, 500);
}
public void draw() {
  background(255);
  sierpinski(0, 500, l);
}
public void sierpinski(double x, double y, double len) {
  if (len <= base) {
    triangle((float)x, (float)y, (float)(x+len), (float)y, (float)(x+len/2), (float)(y-len));
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}

public void keyPressed() {
  if (key == 'w') {
    l-=2;
    if (l <= 0) {
      l = 0;
    }
  } else if (key == 's') {
    l+=2;
    if (l >= 1000)
      l = 1000;
  } else if (key == 'a') {
    base+=10;
    if (base >= 500) {
      base = 500;
    }
  } else if (key == 'd') {
    base-=10;
    if (base < 1) {
      base = 1;
    }
  }
}
