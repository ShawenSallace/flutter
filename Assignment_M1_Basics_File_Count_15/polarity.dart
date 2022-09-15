import 'dart:io';

void main()
{
  print("Enter a number");
  var n=double.parse(stdin.readLineSync()!);
  if(n<0)
    print("negative");
  else if(n==0)
    print("zero");
  else
    print("positive");
}