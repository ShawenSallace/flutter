import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  List<dynamic> m = List.generate(10, (index) => index+11);
  print("List1: $n\nList2 : $m\nAppending List2 to end of List1 :");
  n.addAll(m);
  stdout.write(n);
}