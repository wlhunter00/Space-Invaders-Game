class Enemy2  extends Enemy {
  int x;
  int y;
  PImage Enemy2;
  boolean living;
  int lives;
  boolean shield;

  Enemy2(int xSet, int ySet) {
    super(xSet, ySet);
    x = xSet;
    y = ySet;
    lives = 2;
    living = true;
    shield = true;
  }

  void spawn() {
    Enemy2 = loadImage("Enemy2.jpg");
    if (living) {
      image(Enemy2, x, y);
      if (shield) {
        fill(0, 255, 255, 140);
        ellipse(x+45, y+45, 115, 115);
      }
      x = x+10;
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
          lives--;
          if (lives == 1) {
            shield = false;
          }
          if (lives == 0) {
            living = false;
            w[0].score = w[0].score + 100;
            print(w[0].score);
          }
          return true;
        }
      }
    }
    return false;
  }
}