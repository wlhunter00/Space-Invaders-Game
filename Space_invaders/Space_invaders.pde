Player[] p;
Laser[] l;
Waves[] w;
Barriers[] b;
boolean dKey;
boolean aKey;
int num = 0;
int shotsFired = 0;
int time;
int timeLastFired = -5000;
int bestScore = 0;
int attempts = 1;
boolean win = false;
void setup() {
  size(1400, 1500);
  noStroke();
  background(0); 
  p =  new Player[1];
  l = new Laser[1000];
  b = new Barriers[5];
  w = new Waves[100];
  p[0] = new Player(width/2, 1300);
  w[0] = new Waves();
  stroke(255);
  line(0, 1310, width, 1310);
  b[0] = new Barriers(100, 1225, 3);
  b[1] = new Barriers(550, 1225, 3);
  b[2] = new Barriers(1000, 1225, 3);
}

void draw() {
  if (win == false) {
    if (p[0].lives>=0) {
      background(0);
      fill(255);
      text("Score: " + w[0].score, 25, 1475);
      text("Wave: " + w[0].stage, 550, 1475);  
      b[0].display(); 
      b[1].display();
      b[2].display();
      w[0].Wave1();
      if (w[0].stage == 5) {
        win = true;
      }
      if (aKey == true)
      {
        p[0].moveLeft();
      }
      if (dKey == true)
      {
        p[0].moveRight();
      }
      p[0].lives();
      p[0].spawn();
      if (num > 1000) {
        shotsFired = 0;
        num = 0;
      }
      for (int i=0; i<1000; i++) {
        //print("HI");
        if (i<shotsFired) {
          boolean hit1 =  b[0].hitBarrier(l[i].x, l[i].y);
          boolean hit2 = b[1].hitBarrier(l[i].x, l[i].y);
          boolean hit3 = b[2].hitBarrier(l[i].x, l[i].y);
          boolean hit4=false;
          for (int k=0; k<10; k++) {
            if (hit4 == false) {
              hit4 = w[0].e1[k].hitEnemy(l[i].x, l[i].y);
              if (hit4 == false)
              {
                hit4 = w[0].e2[k].hitEnemy(l[i].x, l[i].y);
                if (hit4 == false) {
                  hit4 = w[0].e3[k].hitEnemy(l[i].x, l[i].y);
                  if (hit4 == false) {
                    hit4 = w[0].e4[k].hitEnemy(l[i].x, l[i].y);
                    if (hit4 == false) {
                      hit4 = w[0].e5[k].hitEnemy(l[i].x, l[i].y);
                      if (hit4 == false) {
                        hit4 = w[0].e6[k].hitEnemy(l[i].x, l[i].y);
                        if (hit4 == false) {
                          hit4 = w[0].e7[k].hitEnemy(l[i].x, l[i].y);
                          if (hit4 == false) {
                            hit4 = w[0].e8[k].hitEnemy(l[i].x, l[i].y);
                            if (hit4 == false) {
                              hit4 = w[0].e9[k].hitEnemy(l[i].x, l[i].y);
                              if (hit4 == false) {
                                hit4 = w[0].e10[k].hitEnemy(l[i].x, l[i].y);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
            if ((hit1 == false) && (hit2 == false) && (hit3 == false) && (hit4 == false)) {
              l[i].display();
              l[i].y = l[i].y - 4 -1*w[0].stage;
            } else {
              l[i].y = -300;
            }
          }
        }
      }  
      stroke(255);
      line(0, 1310, width, 1310);
    } else {
      if (bestScore<w[0].score) {
        bestScore = w[0].score;
      }
      background(0);
      fill(0, 255, 0);
      textSize(35);
      text("You Lost. Your score was " + w[0].score + ". Your best score is " + bestScore + ".", 200, height/2); 
      text("You have had " + attempts + " attempts. Press R to play the game again.", 200, (height/2)+100);
      if (key == 'r') {
        w[0].reset();
        attempts++;
      }
    }
  } else {
    background(0);
    fill(0, 255, 0);
    textSize(35);
    text("You Won. Your score was " + w[0].score + ".", 200, height/2); 
    text("You have had " + attempts + " attempts. Press R to play the game again.", 200, (height/2)+100);
    if (key == 'r') {
      w[0].reset();
      attempts++;
    }
  }
}
void keyPressed() {
  if (key=='d')
  {
    dKey =  true;
  }
  if (key == 'a')
  {
    aKey = true;
  }
}

void keyReleased() {
  if (key=='d')
  {
    dKey =  false;
  }
  if (key == 'a') {
    aKey = false;
  }
  if (key == ' ')
  {
    time=millis();
    if (time>timeLastFired + 610-(10*w[0].stage)) {

      l[shotsFired] = new Laser((p[0].x+48), p[0].y-28);
      shotsFired++;
      num++;
      timeLastFired = time;
      if (shotsFired > 1000) {
        shotsFired = 0;
      }
    }
  }
}