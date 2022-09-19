import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("List:$n\nExtracting last 4 elements...");
  List<dynamic> m = n.sublist(n.length-4);
  print(m);
}