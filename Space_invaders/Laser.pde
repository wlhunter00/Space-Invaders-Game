class Laser {
  int x;
  int y;
  Laser(int xSet, int ySet) {
    x = xSet;
    y = ySet;
    display();
  }

  void display() {
    fill(255, 255, 38);
    rect(x, y, 15, 40);
  }
}