import 'dart:io';

void sumOfDigits(int a)
{
  int sum=0;
  while(a!=0)
    {
      sum+=a%10;
      a~/=10;
    }
  print(sum);
}

void main()
{
  print("Enter a number");
  int a = int.parse(stdin.readLineSync()!);
  sumOfDigits(a);
}