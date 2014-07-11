int currentFrame=0;
int r=500;
float translate_x1=(r/2/cos(PI/6)-r/2/3/cos(PI/6))*cos(PI/6);
float translate_y1=(r/2/cos(PI/6)-r/2/3/cos(PI/6))*sin(PI/6);
float translate_x2=(r/2/3/cos(PI/6)-r/2/9/cos(PI/6))*cos(PI/6);
float translate_y2=(r/2/3/cos(PI/6)-r/2/9/cos(PI/6))*sin(PI/6);
void setup() {
  size(800, 600);
}
 
void display(int r, float rotate0, float translate_x1, float translate_y1, float rotate1,float rotate2, float translate_x2, float translate_y2, float rotate3) {
  pushMatrix();
  noFill();
  stroke(255);
  translate(width/2, height/2);
  rotate(radians(rotate0));
  translate(translate_x1, translate_y1);
  rotate(radians(rotate1));
  rotate(radians(rotate2));
  translate(translate_x2, translate_y2);
  rotate(radians(rotate3));
  triangle(0, -r/2/cos(PI/6), r/2, r/2*tan(PI/6), -r/2, r/2*tan(PI/6));
  popMatrix();
}
void draw() {
  smooth();
  currentFrame=currentFrame+1;
  background(25, 144, 101);
  display(r, 0, 0, 0, 0,0,0,0,0); 
  if (currentFrame<60) {
    display(r, currentFrame, 0, 0, 0,0,0,0,0);
  }
  if (currentFrame>60&&currentFrame<500) {
    display(r, 60, 0, 0, 0,0,0,0,0);
  }
  if (currentFrame<560&&currentFrame>500) {
    display(r, 60-(currentFrame-500), 0, 0, 0,0,0,0,0);
  }
  if (currentFrame<160&&currentFrame>100) {
    for (int i=0; i<6; i=i+1) {
      display(r/3, 60*i, translate_x1, translate_y1, (currentFrame-100),0,0,0,0);
    }
  }
  if (currentFrame>160&&currentFrame<400) {
    for (int i=0; i<6; i=i+1) {
      display(r/3, 60*i, translate_x1, translate_y1, 60,0,0,0,0);
    }
  }
  if (currentFrame<460&&currentFrame>400) {
    for (int i=0; i<6; i=i+1) {
      display(r/3, 60*i, translate_x1, translate_y1, 60-(currentFrame-400),0,0,0,0);
    }
  }
  if (currentFrame<260&&currentFrame>200) {
    for (int i=0; i<6; i=i+1) {
      for (int j=0; j<6; j=j+1) {
        display(r/9, 60*i, translate_x1, translate_y1, 60, 60*j, translate_x2, translate_y2, (currentFrame-200));
      }
      
    }
  }
  if (currentFrame>260&&currentFrame<300) {
    for (int i=0; i<6; i=i+1) {
      for (int j=0; j<6; j=j+1) {
        display(r/9, 60*i, translate_x1, translate_y1, 60, 60*j, translate_x2, translate_y2, 60);
      }
    }
  }
  if (currentFrame<360&&currentFrame>300) {
    for (int i=0; i<6; i=i+1) {
      for (int j=0; j<6; j=j+1) {
        display(r/9, 60*i, translate_x1, translate_y1, 60, 60*j, translate_x2, translate_y2, 60-(currentFrame-300));
      }
      
    }
  }
  if (currentFrame==600) {
    currentFrame=0;
  }
}