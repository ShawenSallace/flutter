import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("List:$n\nReversing the above list");
  n = (n.reversed).toList();
  print("Reversed list: $n");
}