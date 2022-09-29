import 'dart:io';
void main()
{
  for(int i=0;i<6;i++)
  {
    for (int j = 0; j < 6-i; j++)
      stdout.write("*");
    stdout.write("\n");
  }
}