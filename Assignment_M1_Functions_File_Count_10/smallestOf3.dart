import 'dart:io';

void smallest(double a,double b,double c)
{
  var s=a;
  if(a>b)
    s=b;
  if(s>c)
    s=c;
  print("$s is smallest");
}

void main()
{
  print("Enter 3 numbers");
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  double c = double.parse(stdin.readLineSync()!);
  smallest(a, b, c);
}