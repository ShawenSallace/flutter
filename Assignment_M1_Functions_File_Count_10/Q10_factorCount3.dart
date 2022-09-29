import 'dart:io';

void factorCount3(int a)
{
  int count=0;
  while(a%3==0)
    {
      count++;
      a~/=3;
    }
  print(count);
}
void main()
{
  print("Enter an integer");
  int a=int.parse(stdin.readLineSync()!);
  factorCount3(a);
}