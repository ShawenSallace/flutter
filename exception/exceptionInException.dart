import 'newException.dart';

class TwinMethods
{
  method1()
  {
    Exception e1 = Exception();
    throw e1;
  }

  method2()
  {
    try
    {
      method1();
    } catch(e)
    {
      print(e);
      NewException ne1 = NewException("clause");
      throw ne1;
    }
  }
}

main()
{
  TwinMethods tm1 = TwinMethods();
  try
  {
    tm1.method1();
  } catch(e)
  {
    print(e);
  }
  try
      {
        tm1.method2();
      } catch(e)
  {
    print(e);
  }
}