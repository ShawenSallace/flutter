import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("List:$n\nSwapping first element with last element:");
  n[0] += n[10];
  n[10] = n[0] - n[10];
  n[0] = n[0] - n[10];
  print(n);
}