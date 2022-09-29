import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  List<dynamic> m = List.generate(10, (index) => index+11);
  print("List1: $n\nList2 : $m\nJoining List1 and List2 :");
  List<dynamic> l = List.from(n)..addAll(m);
  stdout.write(l);
}