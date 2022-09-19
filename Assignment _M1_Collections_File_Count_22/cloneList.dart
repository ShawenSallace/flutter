import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("Current list : $n");
  List<dynamic> m = n.toList();
  print("Cloned list : $m");
  n.add(-1);
  print("Modified original list : $n\nCloned list : $m");
}