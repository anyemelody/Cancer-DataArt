class deathCase {
  String CaseName;
  float cenX;
  float cenY;
  float R;
  float theta;
  deathCase(String name, int allCase, int allDeath, float locX, float locY) {
    CaseName = name;
    R = sqrt(allCase)*2;
    theta = (allDeath*100/allCase);
    float ratio = allCase/allDeath;
    println(ratio, "lalalalal");
    theta = theta*360/100;
    theta = radians(theta);
    cenX = locX;
    cenY = locY;
  }

  void showRatio() {
    ////* draw the death/case ratio, the sample size maps the case num*////
    colorMode(HSB, 360, 100, 100);
    stroke(180, 100, 0);
    fill(180, 100, 0);
    arc(cenX, cenY, R, R, -theta*0.5, theta*0.5, PIE);
    //ellipse(cenX, cenY, R, R);
  }
}