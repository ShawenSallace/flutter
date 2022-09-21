import 'dart:io';
main()
{
  print("Enter a denominator");
  try
      {
        double a = double.parse(stdin.readLineSync()!);
        a = 2/a;
        a as int;
        print(a);
      }
  on FormatException catch(e)
  {
    print(e);
  }
  catch(e)                    //multiple catch statements
  {
    print(e);
  }
}