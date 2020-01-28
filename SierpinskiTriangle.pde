int base = 0;
boolean hPressed;
boolean gPressed;
public void setup()
{
size(500,500);
}
public void keyPressed() {
  if (key == 'h')
    hPressed = true;
    if (key == 'g')
    gPressed = true;
}
public void keyReleased() {
  if (key == 'h')
    hPressed = false;
    if (key == 'g')
    gPressed = false;
}
public void draw()
{
  if(hPressed == true)
  base += 50;
  
  background(0);
  if(gPressed == true)
 
  base -= 50;
  background(0);
sierpinski(0,500,base);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
if(len <50){
triangle(x,y, x + len/2, y - len, x+ len, y);
}
else
{
  sierpinski(x,y, len/2);
  sierpinski(x+len/2,y, len/2);
  sierpinski(x+len/4,y-len/2, len/2);
  
}

}
