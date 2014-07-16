void setup() {
  size(640, 360, P3D);
  background(0); 
}

void draw() {
  translate(width/2,height/2,0);
  for(int i=0;i<30;i++){
  	for(int j=0;j<36;j++){
  		pushMatrix();
	  	smooth();
	  	noStroke();
		rotateY(radians(12*i));	
	  	rotate(radians(10*j));
	  	translate(140 , 0, 0);
	  	sphere(7);
	  	popMatrix();
  	}
  }
}
