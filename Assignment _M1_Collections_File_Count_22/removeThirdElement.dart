main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("Current List $n");
  n.removeAt(2);
  print("After removing at index 2 $n");
}