class Enemy1 extends Enemy {
  int x;
  int y;
  PImage Enemy1;
  boolean living;

  Enemy1(int xSet, int ySet) { 
    super(xSet, ySet);
    x = xSet;
    y = ySet;
    living = true;
  }

  void spawn() {
    Enemy1 = loadImage("Enemy1.jpg");
    if (living) {
      image(Enemy1, x, y);
      x= x+10;
      if (x+91>width+91) {
        x=-91;
        y+=100;
      }
      if (y+91>1310)
      {
        living = false;
        p[0].lives--;
      }
    }
  }
  boolean hitEnemy(int a, int b) {
    if (living) {
      if (y>=0) {
        if ((a+15>=x)&&(a<x+91)&&(b<y+91)&&(b>y)) {
          print(" hit ");
          living = false;
          w[0].score = w[0].score + 100;
          print(w[0].score);
          return true;
        }
      }
    }
    return false;
  }
}