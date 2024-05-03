class Kirby {
  Kirby() {
    x = 500;
    y = height - 100;
    d = 5; // 움직일 캐릭터의 처음 위치
  }
  float x, y, d;
  void show() { // 움직일 캐릭터를 그리는 함수
    strokeWeight(0);
    fill(215, 72, 148);
    ellipse(x-d*6, y+d*8, d*12, d*5);
    ellipse(x+d*6, y+d*8, d*12, d*5);
    fill(247, 218, 234);
    ellipse(x-d*8, y, d*12, d*5);
    ellipse(x+d*8, y, d*12, d*5);
    circle(x, y, d*20);
    fill(0, 0, 0);
    ellipse(x, y-d*5, d*2, d*8);
    ellipse(x-d*4, y-d*5, d*2, d*7);
    circle(x-d*2, y, d);
    fill(255, 255, 255);
    ellipse(x, y-d*6, d*2, d*3);
    ellipse(x-d*4, y-d*6, d*2, d*3);
  } // 커비
  int collide1(shark m) {
    float dx = x - m.cen_x;
    float dy = y - m.cen_y;
    float s = sqrt(dx*dx + dy*dy);
    if (s < 100) {
      x = 500;
      y = height - 100;
      return 50;
    } 
    else return 0;
  }
  int collide2(Kuromi m) {
    float dx = x - m.x;
    float dy = y - m.y;
    float s = sqrt(dx*dx + dy*dy);
    if (s < 100) {
      x = 500;
      y = height - 100;
      return 50;
    } else return 0;
  }
  void keyMove() {
    if (key == 'd') x += 7;
    else if (key == 'w') y -= 7;
    else if (key == 's') y += 7;
    else if (key == 'a') x -= 7;
  }
} // end of class
