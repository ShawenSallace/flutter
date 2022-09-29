import 'dart:isolate';
import 'dart:io';

infinite(var a)
{
  for(int i = 0; true; i++)
    {}
}

main() async
{
  print("Press enter to exit");
  Isolate.spawn(infinite, null);
  await stdin.first;
  exit(0);
}
