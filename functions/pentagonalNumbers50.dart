import 'dart:io';
void pentagonalNumbers50()
{
  int num = 1;
  for(int i=0;i<50;i++)
    {
      stdout.write("$num ");
      num+=4+3*i;
    }
}
void main()
{
  pentagonalNumbers50();
}