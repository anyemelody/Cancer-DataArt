import java.util.Random;

class singleType {
  PImage img = loadImage("plate2.png");
  Random generator = new Random();
  PVector cen;
  PVector vel = new PVector(0, 0);
  PVector origin = new PVector(0, 0);
  PVector pos = new PVector(0, 0);
  float r, R;
  int deathNum, caseNum;
  float dirt, step, lifeTime;
  
  singleType(int allCase, int allDeath, float locX, float locY) {
    caseNum = allCase;
    deathNum = allDeath;
    R = sqrt(caseNum);
    r = sqrt(deathNum);
    cen = new PVector(locX, locY);
    step = 1;
    dirt = 0;
    lifeTime = int(r);
  }

  void population() {
    noStroke();
    fill(170, 10, 100);
    imageMode(CENTER);
    image(img, cen.x, cen.y, unitX-10, unitX-10);
  }

  void singleCaseLine() {
    pushMatrix();
    translate(cen.x, cen.y);
    dirt = random(360);//choose a random dirt
    for (int i =0; i<R; i++) {
      float num = (float) generator.nextGaussian();
      float sd = 0.8;//the degree of mess
      vel.x = cos(dirt+num*sd)*step;
      vel.y = sin(dirt+num*sd)*step;
      //vel.x = cos(dirt+noise(pos.x, pos.y))*step;
      //vel.y = sin(dirt+noise(pos.x, pos.y))*step;
      pos.add(vel);
      //step = noise(pos.x, pos.y);
      if (i<=lifeTime) {
        fill(75, 100,0);
        //fill(350, 100, 0);
        //fill(250, 100, 0);
        
      } else {
        fill(75, i/R*90, i/R*80);//for all cases
        //fill(350, i/R*90, i/R*80); //for female cases
        //fill(250, i/R*90, i/R*80); // male cases
      }
      ellipse(pos.x, pos.y, (1-i/lifeTime)/2, (1-i/lifeTime)/2);
    }
    popMatrix();
  }

  void allCaseLine() {
    for (int j = 0; j<caseNum; j++) {//j is according to the caseNum
      pos = new PVector(0, 0);
      singleCaseLine();
    }
  }
}