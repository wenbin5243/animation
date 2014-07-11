int currentFrame=0;
int r=500;
float translate_x1=(r/2/cos(PI/6)-r/2/3/cos(PI/6))*cos(PI/6);
float translate_y1=(r/2/cos(PI/6)-r/2/3/cos(PI/6))*sin(PI/6);
float translate_x2=(r/2/3/cos(PI/6)-r/2/9/cos(PI/6))*cos(PI/6);
float translate_y2=(r/2/3/cos(PI/6)-r/2/9/cos(PI/6))*sin(PI/6);
void setup() {
  size(800, 800);
}
void draw() {
  currentFrame=currentFrame+1;
  background(25, 144, 101);
  new Sharp(r, 0, 0, 0, 0,0,0,0,0); 
  if (currentFrame<60) {
    new Sharp(r, currentFrame, 0, 0, 0,0,0,0,0);
  }
  if (currentFrame>60) {
    new Sharp(r, 60, 0, 0, 0,0,0,0,0);
  }
  if (currentFrame<160&&currentFrame>100) {
    for (int i=0; i<6; i=i+1) {
      new Sharp(r/3, 60*i, translate_x1, translate_y1, (currentFrame-100),0,0,0,0);
    }
  }
  if (currentFrame>160) {
    for (int i=0; i<6; i=i+1) {
      new Sharp(r/3, 60*i, translate_x1, translate_y1, 60,0,0,0,0);
    }
  }
  if (currentFrame<260&&currentFrame>200) {
    for (int i=0; i<6; i=i+1) {
      for (int j=0; j<6; j=j+1) {
        new Sharp(r/9, 60*i, translate_x1, translate_y1, 60, 60*j, translate_x2, translate_y2, (currentFrame-200));
      }
      
    }
  }
  if (currentFrame>260) {
    for (int i=0; i<6; i=i+1) {
      for (int j=0; j<6; j=j+1) {
        new Sharp(r/9, 60*i, translate_x1, translate_y1, 60, 60*j, translate_x2, translate_y2, 60);
      }
    }
  }
}
class Sharp{
  Sharp(int r, float rotate, float translate_x1, float translate_y1, float rotate1,float rotate2, float translate_x2, float translate_y2, float rotate3) {
    pushMatrix();
    noFill();
    stroke(255);
    translate(400, 400);
    rotate(radians(rotate));
    translate(translate_x1, translate_y1);
    rotate(radians(rotate1));
    rotate(radians(rotate2));
    translate(translate_x2, translate_y2);
    rotate(radians(rotate3));
    triangle(0, -r/2/cos(PI/6), r/2, r/2*tan(PI/6), -r/2, r/2*tan(PI/6));
    popMatrix();
      
  }

}
 
