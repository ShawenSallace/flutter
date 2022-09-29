import 'dart:io';

void count2(int a)
{
  int count=0;
  while(a!=0)
  {
    if(a%10==2)
      count++;
    a~/=10;
  }
  print(count);
}

void main()
{
  print("Enter an integer");
  int a = int.parse(stdin.readLineSync()!);
  count2(a);
}