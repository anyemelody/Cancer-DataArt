class Death {
  String DeathName;
  float cenX;
  float cenY;
  float R;
  float[]posX0;
  float[]posY0;
  float[]posX1;
  float[]posY1;
  float[]posX2;
  float[]posY2;
  Death(String name, int Death, int mDeath, int fDeath, float locX, float locY, float range) {
    cenX = locX;
    cenY = locY;
    R = range;
    posX0 = new float[Death];
    posY0 = new float[Death];
    posX1 = new float[mDeath];
    posY1 = new float[mDeath];
    posX2 = new float[fDeath];
    posY2 = new float[fDeath];
    DeathName = name;
  }
  ///////////////////////////////////////////////////////
  void showName() {
    fill(0);
    textSize(9);
    textAlign(CENTER, TOP);
    text(DeathName, cenX, cenY+R/2);
  }
  /////*connect the point within each other*/////
  void showAll1() {
    colorMode(HSB, 360, 100, 100);
    noStroke();
    fill(180, 24, 100);
    ellipse(cenX, cenY, R, R);
    for (int i=0; i<posX0.length; i++) {
      theta = random(2*PI);
      r = random(5, R/2-5);
      stroke(0, 70); 
      strokeWeight(0.5);
      point(r*sin(theta)+cenX, r*cos(theta)+cenY);
      posX0[i] = r*sin(theta)+cenX;
      posY0[i] = r*cos(theta)+cenY;
      if (i!=0) {
        for (int j=i; j>0; j--) {
          strokeWeight(0.01);
          stroke(0, 30);
          line(posX0[i], posY0[i], posX0[j-1], posY0[j-1]);
        }
      }
    }
  }
  ///////*just show the death as the points*/////////
  void showAll2() {
    colorMode(HSB, 360, 100, 100);
    noStroke();
    fill(180, 24, 100);
    ellipse(cenX, cenY, R, R);
    for (int i=0; i<posX0.length; i++) {
      theta = random(2*PI);
      r = random(R/2-5);
      stroke(0); 
      strokeWeight(1);
      point(r*sin(theta)+cenX, r*cos(theta)+cenY);
      posX0[i] = r*sin(theta)+cenX;
      posY0[i] = r*cos(theta)+cenY;
    }
  }
  //////////////////////////////////////////////////////
  void showMale() {
    colorMode(HSB, 360, 100, 100);
    noStroke();
    fill(224, 24, 100);
    ellipse(cenX, cenY, R, R);
    for (int i=0; i<posX1.length; i++) {
      theta = random(2*PI);
      r = random(5, R/2-5);
      stroke(0, 70); 
      strokeWeight(0.5);
      point(r*sin(theta)+cenX, r*cos(theta)+cenY);
      posX1[i] = r*sin(theta)+cenX;
      posY1[i] = r*cos(theta)+cenY;
      if (i!=0) {
        for (int j=i; j>0; j--) {
          strokeWeight(0.01);
          stroke(0, 30);
          line(posX1[i], posY1[i], posX1[j-1], posY1[j-1]);
        }
      }
    }
  }
  ////////////////////////////////////////////////////////
  void showFemale() {
    colorMode(HSB, 360, 100, 100);
    noStroke();
    fill(200, 24, 100);
    ellipse(cenX, cenY, R, R);
    for (int i=0; i<posX2.length; i++) {
      theta = random(2*PI);
      r = random(5, R/2-5);
      stroke(0, 70);
      strokeWeight(0.5);
      point(r*sin(theta)+cenX, r*cos(theta)+cenY);
      posX2[i] = r*sin(theta)+cenX;
      posY2[i] = r*cos(theta)+cenY;
      if (i!=0) {
        for (int j=i; j>0; j--) {
          strokeWeight(0.01);
          stroke(0, 30);
          line(posX2[i], posY2[i], posX2[j-1], posY2[j-1]);
        }
      }
    }
  }
}