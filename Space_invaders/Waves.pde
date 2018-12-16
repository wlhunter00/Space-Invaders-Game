class Waves {
  Enemy1[] e1;
  Enemy1[] e2, e3;
  Enemy1[] e4, e5;
  Enemy2[] e6;
  Enemy1[] e7, e8;
  Enemy2[] e9, e10;
  int stage;
  int score;
  Waves() {
    e1 = new Enemy1[1000];
    e2 = new Enemy1[1000];
    e3 = new Enemy1[1000];
    e4 = new Enemy1[1000];
    e5 = new Enemy1[1000];
    e6 = new Enemy2[1000];
    e7 = new Enemy1[1000];
    e8 = new Enemy1[1000];
    e9 = new Enemy2[1000];
    e10 = new Enemy2[1000];
    stage =1;
    for (int a=0; a<10; a++) {
      e1[a] = new  Enemy1(a*140, -100);
      e2[a] = new  Enemy1(a*140, -100);
      e3[a] = new Enemy1(a*140, -200);
      e4[a] = new Enemy1(a*140, -300);
      e5[a] = new Enemy1(a*140, -200);
      e6[a] = new Enemy2(a*140, -100);
      e10[a] = new Enemy2(a*140, -100);
      e7[a] = new Enemy1(a*140, -200);
      e8[a] = new Enemy1(a*140, -300);
      e9[a] = new Enemy2(a*140, -400);
    }
  }

  void Wave1() {
    //print(stage);
    if (stage == 1) {
      for (int a=0; a<10; a++) {
        e1[a].spawn();
      }
      stage = 2;
      for (int a=0; a<10; a++) {
        if (e1[a].living == true) {
          stage = 1;
        }
      }
    }
    if (stage == 2) {
      for (int a=0; a<10; a++) {
        e2[a].spawn();
        e3[a].spawn();
      }
      stage = 3;
      for (int a=0; a<10; a++) {
        if ((e2[a].living == true) || (e3[a].living == true)) {
          stage = 2;
        }
      }
    }
    if (stage == 3) {
     for (int a=0; a<10; a++) {
       e4[a].spawn();
       e5[a].spawn();
       e6[a].spawn();
      }
       stage = 4;
      for (int a=0; a<10; a++) {
        if ((e4[a].living == true) || (e5[a].living == true) || (e6[a].living == true)) {
          stage = 3;
        }
      }
    }
     if (stage == 4) {
     for (int a=0; a<10; a++) {
       e7[a].spawn();
       e8[a].spawn();
       e9[a].spawn();
       e10[a].spawn();
      }
       stage = 5;
      for (int a=0; a<10; a++) {
        if ((e7[a].living == true) || (e8[a].living == true) || (e9[a].living == true) || (e10[a].living == true)) {
          stage = 4;
        }
      }
    }
  }
  
  
  void reset()
  {
     stage = 1;
     p[0].lives = 3;
     w[0].score = 0;
    for (int a=0; a<10; a++) {
      e1[a] = new  Enemy1(a*140, -100);
      e2[a] = new  Enemy1(a*140, -100);
      e3[a] = new Enemy1(a*140, -200);
      e4[a] = new Enemy1(a*140, -300);
      e5[a] = new Enemy1(a*140, -200);
      e6[a] = new Enemy2(a*140, -100);
      e10[a] = new Enemy2(a*140, -100);
      e7[a] = new Enemy1(a*140, -200);
      e8[a] = new Enemy1(a*140, -300);
      e9[a] = new Enemy2(a*140, -400);
    } 
    
  }
}