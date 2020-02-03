public void setup(){
  size(500, 500);
  rectMode(CENTER);
}

public void draw(){
  circleD(250, 250, 400);

}

public String regularPaperFold(int numFolds) {
  if(numFolds == 1){
    return "1";
  }
  if(numFolds == 2){
    return "110";
  }
  return regularPaperFold(numFolds - 1) + "1" + reverse(onesComplement(regularPaperFold(numFolds - 1)));
}

public String onesComplement(String s){
  String r = new String();
  for(int i = 0;i < s.length(); i++){
    if(s.substring(i, i + 1).equals("1"))
      r += "0";
    else
      r += "1";
  }
  return r;
}

public String reverse(String sWord){
  String sNew = new String();
    for(int i = 0; i < sWord.length(); i++){
      sNew = sNew + sWord.substring(sWord.length() - 1 - i, sWord.length() - i);
    }
    return sNew;
}

public void circleD(float x, float y, float siz){
  circle(x, y, siz);
  if(siz > 5){
    circleD(x - siz/2, y, siz/2);
    circleD(x, y - siz/2, siz/2);
    circleD(x, y + siz/2, siz/2);
    circleD(x + siz/2, y, siz/2);
  }
}