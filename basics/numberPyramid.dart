import 'dart:io';
void main()
{
  for(int i=2;i<7;i++)
    {
      for(int j=1;j<i;j++)
        stdout.write(j);
      stdout.write("\n");
    }
}