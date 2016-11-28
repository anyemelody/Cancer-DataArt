class Case {
  String CaseName;
  float cenX;
  float cenY;
  float R;
  float[]posXa;
  float[]posYa;
  float[]posXm;
  float[]posYm;
  float[]posXf;
  float[]posYf;
  Case(String name, int allCase, int fCase, int mCase, float locX, float locY) {
    cenX = locX;
    cenY = locY;
    R = sqrt(allCase)*2;
    posXa = new float[allCase];
    posYa = new float[allCase];
    posXm = new float[mCase];
    posYm = new float[mCase];
    posXf = new float[fCase];
    posYf = new float[fCase];
    CaseName = name;
  }
  ///////////////////////////////////////////////////////
  void showName() {
    fill(0);
    textSize(10);
    textAlign(CENTER, TOP);
    text(CaseName, cenX, cenY+60);
  }
  /////////////////////////////////////////////////////
  void showAll1() {
    ////* draw the sample pool*////
    colorMode(HSB, 360, 100, 100);
    noStroke();
    fill(180, 24, 100);
    ellipse(cenX, cenY, R, R);
    //////////////////////////////////
    for (int i=0; i<posXa.length; i++) {
      theta = random(2*PI);
      r = random(R/2-5);
      stroke(0); 
      strokeWeight(1);
      point(r*sin(theta)+cenX, r*cos(theta)+cenY);
      /*save the point location*/
      posXa[i] = r*sin(theta)+cenX;
      posYa[i] = r*cos(theta)+cenY;
    }
  }
  ////////////////////////////////////////////////////// 
  void showAll2() {
    //use the num of case to draw the sample pool 
    colorMode(HSB, 360, 100, 100);
    noStroke();
    fill(180, 24, 100);
    ellipse(cenX, cenY, R, R);
  }
  ////////////////////////////////////////////////////////
}