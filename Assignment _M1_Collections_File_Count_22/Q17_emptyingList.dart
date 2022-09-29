import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("List : $n");
  n.removeRange(0,n.length);
  print("Emptied list : $n");
}