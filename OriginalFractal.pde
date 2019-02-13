public void setup(){
	size(500,500);
	rectMode(CENTER);
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
public void draw(){
	background(0);
	myFractal(250,250,400);
}
public void myFractal(int x, int y, int z){
	if(z>10){
		rect(x,y,z,z);
		myFractal(x,y,z/2);
		myFractal(x,y,z/2);
		myFractal(x+z,y,z/2);
		myFractal(x,y+z,z/2);
		myFractal(x-z,y,z/2);
		myFractal(x,y-z,z/2);
	}
}