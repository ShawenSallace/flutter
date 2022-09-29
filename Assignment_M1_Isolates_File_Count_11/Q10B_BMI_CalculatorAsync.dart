import 'dart:io';
import 'dart:isolate';

class BMICalculator
{
  BMICalculator();

  static double bmi(double h, double w)
  {
    return(w/(h*h));
  }
}

calculateBMI(SendPort s) async
{
  print("Enter height and weight to calculate BMI");
  double height = double.parse(stdin.readLineSync()!);
  double weight = double.parse(stdin.readLineSync()!);
  print("BMI = ${BMICalculator.bmi(height, weight)}");
  s.send("Done");
}

main() async
{
  ReceivePort r1 = ReceivePort();
  print("Running BMICalculator...");
  Isolate.spawn(calculateBMI, r1.sendPort);
  r1.listen((message) {exit(0);});
}