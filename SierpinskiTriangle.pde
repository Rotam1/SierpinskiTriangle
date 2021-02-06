
Tam, Ronny <rotam1@s.sfusd.edu>
11:52 PM (0 minutes ago)
to me

ArrayList <Integer> values = new ArrayList <Integer>();
int click = 0;
int n = 700;
public void setup()
{
  size(800,800);
  
  values.add(700);
  values.add(699);
  for(int i = 1; i < 10; i++){
    int num = 699 / (int)Math.pow(2, i);
    values.add(num);
  }
}
public void draw()
{
  background(255, 255, 255);
  fill(0, 0, 0);
  sierpinski(50, 750, 700, n);
}
public void mouseClicked()//optional
{
    click ++;
    if(click < 10){
    n = values.get(click);
  }
}
public void sierpinski(int x, int y, int len, int n) 
{
  if(len <= n){
    triangle(x, y, x + len, y, x+len/2, y - len);
  }
  else {
    sierpinski(x, y, len/2, n);
    sierpinski(x+len/2, y, len/2, n);
    sierpinski(x+len/4, y-len/2, len/2, n);
  }
}
