public void setup()
{
  
  size(1000,1000);
}
public void draw()
{
  background(0);
  stroke(255);
 
  myFractal(500,600,200);
  
  
}
public void mouseDragged()//optional
{

}
public void myFractal(float x, float y, float slength) 
{

 float turn =  radians(mouseX/2);
 
 translate(x,y);
 line(0,0,0, -slength);
 if(slength > 2){
   translate(0,-slength);
   rotate(turn);
   myFractal(0,0,slength*0.66);
   rotate(-turn);
   translate(0,slength);
   
   translate(0,-slength);
   rotate(-turn);
   myFractal(0,0,slength*0.66);
   rotate(turn);
   translate(0,slength);
 }  
}
