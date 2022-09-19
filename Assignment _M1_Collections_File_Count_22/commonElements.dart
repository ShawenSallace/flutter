import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  List<dynamic> m = List.generate(11, (index) => index*2);
  print("Comparing $n and $m...\nCommon elements:${(n.toSet()).intersection(m.toSet())}");
}