class Standard
{
  debug()
  {
    print("debugging");
  }
}

class Class1 extends Standard
{
  Class1()
  {
    print("Object of type class 1 created");
  }
}

class Class2 extends Standard
{
  Class2()
  {
    print("Object of type class 2 created");
  }
}

main()
{
  Class1 c11 = Class1();
  Class2 c21 = Class2();
  c11.debug();
  c21.debug();
}