import 'dart:io';
void main()
{
  print("Enter a year");
  var year=int.parse(stdin.readLineSync()!);
  if((year%4==0)&&(year%100!=0)||(year%400==0))
    print("leap year");
  else
    print("not leap year");
}