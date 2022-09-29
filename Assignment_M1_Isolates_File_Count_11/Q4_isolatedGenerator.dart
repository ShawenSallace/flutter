import 'dart:async';
import 'dart:io';
import 'dart:isolate';

generate10(SendPort sendPort)
{
  sendPort.send(List.generate(10, (index) => index));
}

main() async
{
  ReceivePort r1 = ReceivePort();
  Isolate? i1 = Isolate(r1.sendPort);
  i1 = await Isolate.spawn(generate10, r1.sendPort);
  print("Generating list of 10 elements:");
  print("Waiting for generated list from isolate");
  r1.listen((message) {print(message); r1.close();});
  i1.kill(priority: Isolate.immediate);
}