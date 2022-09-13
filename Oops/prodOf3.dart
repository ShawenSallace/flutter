import 'dart:io';
class Mul
{
  static int Multiply(int x,int y,int z)
  {
    return(x*y*z);
  }
  int Prod(int x,int y,int z)
  {
    return(x*y*z);
  }
}
main()
{
  print("Enter 3 integers");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

  print("Using class method, product is ${Mul.Multiply(a,b,c)}");
  Mul m1 = Mul();
  print("Using object method, product is ${m1.Prod(a,b,c)}");
}