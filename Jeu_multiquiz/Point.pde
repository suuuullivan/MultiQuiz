class Point{
  float x, y;
  
  Point(float cx, float cy){
    this.x = cx;
    this.y = cy;
  }
  
  Point(){
    this.x = 0;
    this.y = 0;
  }
  
  void setX(float cx){ this.x = cx; }
  void setY(float cy){ this.y = cy; }
  float getX(){ return x; }
  float getY(){ return y; }
  
}
