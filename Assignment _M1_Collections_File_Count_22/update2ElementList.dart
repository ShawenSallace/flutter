import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("List:$n\nInput an element for updating at index 1");
  int element = int.parse(stdin.readLineSync()!);
  n[1] = element;
  print("Updated list: $n");
}