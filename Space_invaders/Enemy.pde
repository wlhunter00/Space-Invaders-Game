abstract class Enemy {
  int x;
  int y;
  PImage Enemy;
  boolean living;

  Enemy(int xSet, int ySet) {
    x = xSet;
    y = ySet;
    living = true;
  }

  void Life() {
    living = true;
  }

  abstract void spawn();

  abstract boolean hitEnemy(int a, int b);
}