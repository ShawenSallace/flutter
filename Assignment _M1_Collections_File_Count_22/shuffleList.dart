import 'dart:io';
main()
{
  List<dynamic> n = (Iterable.generate(11)).toList(growable: true);
  print("List:$n\nShuffling the above list");
  n.shuffle();
  print("Shuffled list: $n");
}