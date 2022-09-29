import 'dart:io';
import 'dart:math';
class DecimalFormat
{
  static double RoundToN(double a, int n)
  {
    num p = pow(10, n);
    return(((a*p).roundToDouble())/p);
  }
}
double AverageN(List<dynamic> g)
{
  var sum = 0.0;
  int i;
  for(i = 0;g[i] != -1;i++)
    sum += g[i];
  if(i != 0)
    return(sum/i);
  else
    return(-1);
}
void main()
{
  List grades = List.filled(20, 0, growable: false);
  print("Enter grades,enter '-1' to exit");
  int i = 0;
  do
    {
      grades[i] = int.parse(stdin.readLineSync()!);
    }
  while(grades[i++]!=-1);
  print("Average of grades = ${DecimalFormat.RoundToN(AverageN(grades), 2)}");
}