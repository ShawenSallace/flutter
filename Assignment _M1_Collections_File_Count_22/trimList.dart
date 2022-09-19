import 'dart:math';
List trimList(List l,int newLength)
{
  int oldLength = l.length;
  return(List.filled(newLength, null)..setRange(0, min(newLength,oldLength),l));
}
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList();
  print("Current List $n");
  n = trimList(n, 5);
  print("Trimmed to length of 5:$n");
}