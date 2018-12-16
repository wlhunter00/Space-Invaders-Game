class Barriers {
  int x;
  int y;
  int barrierLives;
  boolean hit;
  int w;
  Barriers(int xSet, int ySet, int livesSet) {
    x = xSet;
    y = ySet;
    w = 300;
    barrierLives = livesSet;
    display();
  }

  void display() {
    fill(0, 255, 0);
    noStroke();
    rect(x, y, w, 55);
  }
  boolean hitBarrier(int a, int b) {
    if (barrierLives == 3) {
      if ((a+15>=x)&&(a<x+300)&&(b<1280)&&(b>1225)) {
        //print("hit ");
        barrierLives = barrierLives - 1;
        //print(barrierLives);
        w -= 100;
        return true;
      }
    }
   if (barrierLives == 2) {
      if ((a+15>=x)&&(a<x+225)&&(b<1280)&&(b>1225)) {
        //print("hit ");
        barrierLives = barrierLives - 1;
        //print(barrierLives);
        w -= 100;
        return true;
      }
   }
   if (barrierLives == 1) {
      if ((a+15>=x)&&(a<x+150)&&(b<1280)&&(b>1225)) {
        //print("hit ");
        barrierLives = barrierLives - 1;
        //print(barrierLives);
        w -= 100;
        return true;
      }
   }
    return false;
  }
}