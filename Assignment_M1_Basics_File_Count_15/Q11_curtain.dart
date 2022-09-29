import 'dart:io';
void main()
{
  for(int i=0;i<5;i++)
  {
    stdout.write("\n");
    for (int j = 0; j < 5-i; j++)
      stdout.write("*");
  }
  for(int i=0;i<3;i++)
  {
    stdout.write("\n");
    for (int j = 0; j <= i; j++)
      stdout.write("*");
  }
}