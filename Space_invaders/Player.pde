class Player {
  PImage player;
  int x;
  int y;
  int lives;
  PImage life;

  Player(int xSet, int ySet) {
    player = loadImage("ship.jpg");
    life = loadImage("lives.jpg");
    x = xSet;
    y = ySet;
    lives = 3;
    lives();
    spawn();
  }
  void spawn() {
    image(player, x, y);
  }
  void moveLeft() {
    x= x-10;
    spawn();
    if (x<-13) {
      x=-13;
    }
  }
  void moveRight() {
    x = x+10;
    spawn();
    if (x>width-100) {
      x=width-100;
    }
  }

  void lives() {
    if (lives == 3) {
      fill(255);
      textSize(50);
      text("Lives:",1000,1375);
      image(life, 1145, 1320);
      image(life, 1230, 1320);
      image(life, 1315, 1320);
    }
    if (lives == 2) {
      fill(255);
      textSize(50);
      text("Lives:",1000,1375);
      image(life, 1145, 1320);
      image(life, 1230, 1320);
    }
    if (lives == 1) {
      fill(255);
      textSize(50);
      text("Lives:",1000,1375);
      image(life, 1145, 1320);
    }
  }
}