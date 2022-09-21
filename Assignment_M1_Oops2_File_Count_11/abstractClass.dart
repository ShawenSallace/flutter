class Shape //abstract class
{
  draw(){}
  erase(){}
}

class Circle implements Shape
{
  draw()
  {
    print("Drawing Circle");
  }

  @override
  erase() {
    // TODO: implement erase
    print("Erasing Circle");
  }
}

class Square implements Shape
{
  draw()
  {
    print("Drawing Square");
  }

  @override
  erase() {
    // TODO: implement erase
    print("Erasing Square");
  }
}

class Triangle implements Shape
{
  draw()
  {
    print("Drawing Triangle");
  }

  @override
  erase() {
    // TODO: implement erase
    print("Erasing Triangle");
  }
}

main() {
  Circle c1 = Circle();
  Square s1 = Square();
  Triangle t1 = Triangle();
  c1.draw();
  s1.draw();
  t1.draw();
  c1.erase();
  s1.erase();
  t1.erase();
}