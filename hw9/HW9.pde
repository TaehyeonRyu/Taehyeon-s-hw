Kirby Tae;
Kuromi [] mm ;
shark [] kk;
int keepText =0, goal=0;

void setup() {
  size(1000, 800);
  Tae = new Kirby();
  mm = new Kuromi [3];
  kk = new shark [3];
  for (int i = 0; i < 3; i++) {
    mm[i] = new Kuromi(i);
    kk[i] = new shark(i);
  }
}

void draw() {
  background(120);
  if (keepText != 0) showFail();
  else if (goal != 0) showSuccess();
  else checkSuccess(Tae.x, Tae.y);

  Tae.show();
  for (int i = 0; i < 3; i++) {
    mm[i].update();
    mm[i].show();
    kk[i].update();
    kk[i].show();
    if(keepText == 0) {
       keepText = Tae.collide1(kk[i]) + Tae.collide2(mm[i]);
       if (Tae.collide1(kk[i]) !=0 && Tae.collide2(mm[i])!=0){
          keepText =  keepText/2;
       }
    }
  }
}
  void keyPressed(){
  Tae.keyMove();
}
