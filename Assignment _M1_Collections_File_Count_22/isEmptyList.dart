import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("List : $n");
  if(n.isEmpty)
    {
      print("List is empty");
    }
  else
    {
      print("List is not empty");
    }
  n.removeRange(0, n.length);
  print("List : $n");
  if(n.isEmpty)
  {
    print("List is empty");
  }
  else
  {
    print("List is not empty");
  }
}