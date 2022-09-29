import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("List:$n\nInput index from 0 to 10 to retrieve the corresponding element");
  int index = int.parse(stdin.readLineSync()!);
  print("Retrieved item:$index");
}