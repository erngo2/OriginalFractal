public void setup(){
  size(500, 500);
  rectMode(CENTER);
}

public void draw(){
  fracD(250, 250, 500);

}

public void fracD(float x, float y, float siz){
  rect(x, y, siz, siz);
  if(siz > 10){
    fracD(x - siz/2, y - siz/2, siz/2);
    fracD(x + siz/2, y - siz/2, siz/2);
    fracD(x + siz/2, y + siz/2, siz/2);
    fracD(x - siz/2, y + siz/2, siz/2);
  }
}