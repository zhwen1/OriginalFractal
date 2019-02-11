public void setup(){
	size(500,500);
}
public void draw(){
	background(0);
	myFractal(0,499,500);
}
public void myFractal(int x, int y, int siz){
	if(siz>10){
		triangle(x,y,x+siz,y,x+(siz/2),y-siz);
	}
	else{
		myFractal(x,y,siz/2);
		myFractal(x+siz/4,y,siz/4);
		myFractal(x+siz/6,y-siz/6,siz/6);
	}
}