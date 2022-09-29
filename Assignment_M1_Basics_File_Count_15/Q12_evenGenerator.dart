import 'dart:io';
void main()
{
  print("Enter count of even numbers to be generated");
  int count=(int.parse(stdin.readLineSync()!))*2;
  for(int i=0;i<count;i+=2)
    print(i);
}