import 'dart:isolate';

main()
{
  ReceivePort r1 = ReceivePort();
  Isolate i1 = Isolate(r1.sendPort);
}