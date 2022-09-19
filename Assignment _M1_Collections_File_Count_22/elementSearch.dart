import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("List : $n\nEnter integer to search in the above list");
  int element = int.parse(stdin.readLineSync()!);
  int index = n.indexOf(element);
  if(index != -1)
    {
      print("$element present in List at index $index");
    }
  else
    print("element not found");
}