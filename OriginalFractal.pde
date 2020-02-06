public void setup(){
  size(800, 800);
  rectMode(CENTER);
  frameRate(30);
  noLoop();
  //fracD(100, 100, 800);
}

public void draw(){
  //fill((float)Math.random() * 255,(float) Math.random() * 255,(float) Math.random() * 255);
  background(0);
  fracD(100, 100, 800);
  //b++;
}

int a = 0;
public void mousePressed(){
  a++;
  redraw();
}

int b = 0;
public void fracD(float x, float y, float siz){
  fill((float)Math.random() * 255,(float) Math.random() * 255,(float) Math.random() * 255);
  if(frameCount % 2 == 0)
    circle(x, y, siz);
  else
    rect(x, y, siz, siz);
  if(siz > 5){
    fracD(x - siz/2, y - siz/2, siz/2.1);
    fracD(x + siz/2, y - siz/2, siz/2.1);
    fracD(x + siz/2, y + siz/2, siz/2.1);
    fracD(x - siz/2, y + siz/2, siz/2.1);
  }
}