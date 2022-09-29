import 'dart:io';
void main()
{
  int value=0;
  print("Enter number");
  var number=stdin.readLineSync();
  var length=(number?.length)!~/2;
  int num=int.parse(number!);
  for(int i=0;i<length;i++)
    {
      value=value*10+num%10;
      num~/=10;
    }
  if(num>=(value*10))
    {
      num~/=10;
    }
  if(num==value)
    {
      print("palindrome");
    }
  else
    {
      print("not palindrome");
    }
}