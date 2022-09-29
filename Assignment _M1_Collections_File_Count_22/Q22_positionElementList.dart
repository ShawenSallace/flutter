main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("List : $n");
  for(var element in n)
  {
    print("${n[element]} at index $element");
  }
}