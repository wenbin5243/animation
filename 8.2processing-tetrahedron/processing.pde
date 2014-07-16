int currentFrame=0;
void setup(){
  size(640, 360, P3D);
}

void draw(){
  currentFrame=currentFrame+1;
  background(0);

  translate(width/2, height/2, 0);
  stroke(255);
  rotateX(PI/6);
  rotateZ(PI/180*currentFrame);
  noFill();

  beginShape();
  vertex( 100, -100, -100);
  vertex(   0,    0,  100);
  vertex( 100,  100, -100);

  vertex(-100, 100, -100);
  vertex(   0,    0,  100);

  vertex( 100, -100, -100);
  vertex( 100,  100, -100);

  vertex( 100, -100, -100);
  vertex(-100, 100, -100);

  endShape();
}
  