import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("List:$n\nInput index from 0 to 10 and an element for updating");
  int index = int.parse(stdin.readLineSync()!);
  int element = int.parse(stdin.readLineSync()!);
  n[index] = element;
  print("Updated list: $n");
}