public void setup(){
  size(800, 800);
  rectMode(CENTER);
  frameRate(30);
  //fracD(100, 100, 800);
}

public void draw(){
  //fill((float)Math.random() * 255,(float) Math.random() * 255,(float) Math.random() * 255);
  fracD(100, 100, 800);
}
public void fracD(float x, float y, float siz){
  fill((float)Math.random() * 255,(float) Math.random() * 255,(float) Math.random() * 255);
  circle(x, y, siz);
  if(siz > 10){
    fracD(x - siz/2, y - siz/2, siz/2);
    fracD(x + siz/2, y - siz/2, siz/2);
    fracD(x + siz/2, y + siz/2, siz/2);
    fracD(x - siz/2, y + siz/2, siz/2);
  }
}