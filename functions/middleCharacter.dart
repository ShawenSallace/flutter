import 'dart:io';

void middleCharcter(String? s)
{
 int n = s!.length;
 if(n%2==0)
   {
     print(s[n~/2-1]);
   }
 print(s[n~/2]);
}

void main()
{
  print("Enter a string");
  String? s = stdin.readLineSync();
  middleCharcter(s);
}