void checkSuccess(float x, float y){ 
  if(y <= 150 && 200 < x && x < 600)  goal = 200;
  }
void showSuccess(){
    goal--;    
    fill(255,0,0);
    textSize(100);
    text("Clear!", 380, 450);
    if (goal == 0) exit();
}
void showFail(){
    keepText --;
    fill(255,0,0);
    textSize(150);
    text("Fail!", 380, 450);
}
