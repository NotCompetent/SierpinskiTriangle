public void setup()
{
	size(600,600);
}
public void draw()
{
	sierpinski(50,550,500);
	//unsierpinski(2,550,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <=10){
		fill(0,255,255);
 		stroke(0,0,255);
 		beginShape();
 		vertex(x,y);
 		vertex(x+len,y);
 		vertex(x+len/2,y-len);
 		endShape(CLOSE);
 		stroke(0,0,0);
 		fill(0,0,0);
	}else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
		unsierpinski(x+len/4,y,len);
	}
}
public void unsierpinski(int x, int y, int len) 
{

	len=len/2;
	//if(len <=10){
		fill(255,255,0);
 		stroke(255,0,0);
 		beginShape();
 		vertex(x,y-len);
 		vertex(x+len,y-len);
 		vertex(x+len/2,y);
 		endShape(CLOSE);
 		stroke(0,0,0);
 		fill(0,0,0);
	//}else{
		//sierpinski(x,y,len/2);
		//sierpinski(x+len/2,y,len/2);
		//sierpinski(x+len/4,y-len/2,len/2);
	//}
}