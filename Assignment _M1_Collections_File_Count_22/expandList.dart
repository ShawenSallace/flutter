import 'dart:math';
List expandList(List l,int newLength)
{
  int oldLength = l.length;
  return(List.filled(newLength, null)..setRange(0, min(newLength,oldLength),l));
}
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList();
  print("Current List $n");
  n = expandList(n, 20);
  print("Trimmed to length of 20:$n");
}