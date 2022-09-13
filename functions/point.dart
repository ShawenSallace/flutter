library point;

class Point
{
  var _x;
  var _y;
  static int c=0;
  Point(var a,var b)
  {
    _x=a;
    _y=b;
    count();
  }
  void move(var a,var b)
  {
    _x+=a;
    _y+=b;
  }
  void display()
  {
    print("Coordinates of point:$_x,$_y");
    print("Count:$c");
  }
  void count()
  {
    c++;
  }
}
