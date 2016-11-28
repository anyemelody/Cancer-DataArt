/* This data visualization is about the death/case.
 The data is from American Cancer Society.
 Made by Yue Hu*/

int i = 0;
float theta = 0;
float r =0;
float locX;
float locY;
float unitX;
float unitY;
int R;
Case[] caseGraphic = new Case[23];
Death[] deathGraphic = new Death[23];
deathCase[] ratioGraphic = new deathCase[23];
singleType[] graphic = new singleType[23];

void setup() {
  //fullScreen();
  size(800, 600);
  colorMode(HSB, 360, 100, 100);
  background(180, 0, 100);
  loadData("case.csv", "DeathEstimates.csv");
}

void draw() {
}

void loadData(String url1, String url2) {
  Table Case = loadTable(url1, "header,csv");
  Table Death = loadTable(url2, "header,csv");
  /*second line is default as the 0*/
  for (int i=1; i<24; i++) {
    String name = Case.getString(i, 0);
    /*catch the data and zoom out the data*/
    int allCase = Case.getInt(i, 1);
    int allDeath = Death.getInt(i, 1);
    allCase = round(allCase/100);
    allDeath = round(allDeath/100);
    /*catch the data and zoom out the data*/
    int fCase = Case.getInt(i, 2);
    int fDeath = Death.getInt(i, 2);
    fCase = round(fCase/100);
    fDeath = round(fDeath/100);
    /*catch the data and zoom out the data*/
    int mCase = Case.getInt(i, 3);
    int mDeath = Death.getInt(i, 3);
    mCase = round(mCase/100);
    mDeath = round(mDeath/100);
    //println(name, allCase, fCase, mCase, i);
    println(name, allDeath, fDeath, mDeath, i);
    //////////////////////////////////////////////////////////
    unitX = width/6; //the width of unit
    unitY = height/4; // the height of unit 
    R = 100; // set the sample radius
    if (i<=6) {
      locX = i*unitX-unitX/2;
      locY = unitY/2;
    } else if (i<=12) {
      locX = (i-6)*unitX-unitX/2;
      locY = 3*unitY/2;
    } else if (i <= 18) {
      locX = (i-12)*unitX-unitX/2;
      locY = 5*unitY/2;
    } else if (i <= 24) {
      locX = (i-18)*unitX-unitX/2;
      locY = 7*unitY/2;
    }
    ///////////////////////////////////////////////////////////
    caseGraphic[i-1] = new Case(name, allCase, fCase, mCase, locX, locY);
    caseGraphic[i-1].showName();
    graphic[i-1] = new singleType(allCase, allDeath, locX, locY);
    //graphic[i-1] = new singleType(allCase, allDeath, locX, locY);
    graphic[i-1].population();
    graphic[i-1].allCaseLine();
  }
}