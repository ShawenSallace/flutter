main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("Current List $n");
  n.insert(0, -1);
  print("After inserting -1 at index 0 $n");
}