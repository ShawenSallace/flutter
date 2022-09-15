import 'dart:io';

void twinPrime100()
{
  int t=2;
  bool s=false;
  for(int i=2;i<100;i++)
  {
    for(int j=2;j<51;j++)
    {
      if (i != j)
      {
        if (i % j == 0)
          break;
        else
          continue;
      }
      if(t+2==i)
      {
        if(s==false)
          stdout.write("$t $i ");
        else
          stdout.write("$i ");
        s=true;
      }
      else
        s=false;
      t=i;
    }
  }
}
void main()
{
  twinPrime100();
}