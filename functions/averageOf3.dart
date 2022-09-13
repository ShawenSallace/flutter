import 'dart:io';

void average(double a,double b,double c)
{
  var s=(a+b+c)/3;
  print(s);
}

void main()
{
  print("Enter 3 numbers");
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  double c = double.parse(stdin.readLineSync()!);
  average(a, b, c);
}