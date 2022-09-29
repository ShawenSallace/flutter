import 'dart:io';
import 'dart:isolate';

class Calculator
{
  Calculator();

  static double add(double a, double b)
  {
    return(a + b);
  }

  static double subtract(double a, double b)
  {
    return(a - b);
  }

  static double multiply(double a, double b)
  {
    return(a * b);
  }

  static double divide(double a, double b)
  {
    return(a / b);
  }
}

calculate(SendPort s) async
{
  print("Choose operation\n1.Addition\n2.Subtraction\n3.Multiplication\n4.Division");
  int choice = int.parse(stdin.readLineSync()!);
  switch(choice)
  {
    case 1: print("Enter 2 numbers for addition");
            double a = double.parse(stdin.readLineSync()!);
            double b = double.parse(stdin.readLineSync()!);
            print("$a+$b = ${Calculator.add(a, b)}");
            break;
    case 2: print("Enter 2 numbers for subtraction");
            double a = double.parse(stdin.readLineSync()!);
            double b = double.parse(stdin.readLineSync()!);
            print("$a-$b = ${Calculator.subtract(a, b)}");
            break;
    case 3: print("Enter 2 numbers for multiplication");
            double a = double.parse(stdin.readLineSync()!);
            double b = double.parse(stdin.readLineSync()!);
            print("$a*$b = ${Calculator.multiply(a, b)}");
            break;
    case 4: print("Enter 2 numbers for division");
            double a = double.parse(stdin.readLineSync()!);
            double b = double.parse(stdin.readLineSync()!);
            print("$a/$b = ${Calculator.divide(a, b)}");
  }
  s.send("Done");
}

main() async
{
  ReceivePort r1 = ReceivePort();
  print("Running Calculator...");
  Isolate.spawn(calculate, r1.sendPort);
  r1.listen((message) {exit(0);});
}