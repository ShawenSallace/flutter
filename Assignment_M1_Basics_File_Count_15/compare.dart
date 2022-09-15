import 'dart:io';

void main()
{
  print("Enter 2 numbers");
  var n=double.parse(stdin.readLineSync()!);
  var m=double.parse(stdin.readLineSync()!);
  if(n<m)
    print("$m is greater than $n");
  else if(n==m)
    print("both are equal");
  else
    print("$n is greater than $m");
}