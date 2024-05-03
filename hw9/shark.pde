class shark {
 shark(int i) {
   cen_x = random(100, width-100);
   cen_y = random(100, height-200);
   size_h = 70;
   v_x = 1+i;
   v_y = (int)(random(-3,3));
 }
 shark(int a, int b, int c) {
  cen_x = a;
  cen_y = b;
  size_h = c;
  while (v_x==0 || v_y==0) {
     v_x = (int)(random(-3,3));
     v_y = (int)(random(-3,3));
   }
 }
 float cen_x, cen_y, size_h, mirror_x;
 int v_x=0, v_y=0;
 void update() { //벽에 닿았을 때 장애물 튕기도록
   if (cen_x<0 || cen_x>width) {
     v_x=-v_x;
   }
   else if (cen_y<150 || cen_y>height-200) {
     v_y=-v_y;
   }
  cen_x += v_x;
  cen_y += v_y;
 }
 void show() { //상어그리기
  fill(179,172,199);
  stroke(149,142,159);
  float size_w = 3*size_h/5.0;
  ellipse(cen_x, cen_y-(1/6.0)*size_h, (1/4.0)*size_w, size_h); //1
  ellipse(cen_x, cen_y, 2*size_w, size_h/5.0); //2
  float rect_x, rect_y, rect_w, rect_h; 
  rect_x = cen_x + size_w/7.0;
  rect_y = cen_y + size_h/5.0;
  rect_w = 8*size_w/25.0;
  rect_h = 2*size_h/5.0;
  rect(rect_x, rect_y, rect_w, 2*size_h/5.0); //3
  mirror_x = mirror(rect_x, cen_x);
  rect(mirror_x - 8*size_w/25.0, cen_y + size_h/5.0, rect_w, 2*size_h/5.0); //4
  ellipse(rect_x + rect_w/2.0, rect_y + rect_h, rect_w, size_h/15.0); //5
  mirror_x = mirror(rect_x + rect_w/2.0, cen_x);
  ellipse(mirror_x, rect_y + rect_h, rect_w, size_h/15.0); //6
  ellipse(cen_x,cen_y,size_w,size_h); //7
  fill(245, 245, 245);
  stroke(215, 215, 215);
  ellipse(cen_x, cen_y + size_h/14.0, 5*size_w/6.0, 17*size_h/20.0); //8
  fill(0,0,0);
  ellipse(rect_x, cen_y - 7*size_h/20.0, size_w/20.0, size_h/20.0);
  ellipse(mirror(rect_x, cen_x), cen_y - 7*size_h/20.0, size_w/20.0, size_h/20.0);
}

float mirror(float x, float cen_x) {
  return 2*cen_x-x;
}
}
