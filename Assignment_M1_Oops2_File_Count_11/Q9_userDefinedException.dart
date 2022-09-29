import 'dart:io';
class CheckArraySize implements Exception //user defined
{
  static printException()
  {
    print("Invalid array size");
  }
}

main()
{
  print("Enter array size");
  int n = int.parse(stdin.readLineSync()!);
  try
  {
    if(n < 0)
    {
      throw CheckArraySize;
    }
  } catch(e)
  {
    print(e);
    CheckArraySize.printException();
    exit(0);
  }

  print("$n accepted");
}