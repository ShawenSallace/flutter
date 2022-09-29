import 'dart:isolate';

sayHello(var a)
{
  print("Hello");
}

main()
{
  Isolate.spawn(sayHello, null);
  for(int i = 0; i < 10; i++)
  {
    print("hi");
  }
}