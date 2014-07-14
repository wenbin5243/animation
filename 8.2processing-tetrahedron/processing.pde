size(640, 360, P3D);
background(0);

translate(width/2, height/2, 0);
stroke(255);
rotateX(PI/2);
rotateZ(-PI/6);
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