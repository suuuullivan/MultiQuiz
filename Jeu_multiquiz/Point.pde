class Point{
  int x,y;
  Point(int cx,int cy){
    this.x = cx;
    this.y = cy;
  }
  Point(){
    this.x = 0;
    this.y = 0;
  }
  void setX(int cx){this.x=cx;}
  void setY(int cy){this.y=cy;}
  int getX(){return x;}
  int getY(){return y;}
}
