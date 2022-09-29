main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  for(var element in n)
  {
    print(n[element]);
  }
}
