import 'dart:io';

class BMICalculator
{
  BMICalculator();

  static double bmi(double h, double w)
  {
    return(w/(h*h));
  }
}

main()
{
  print("Enter height and weight to calculate BMI");
  double height = double.parse(stdin.readLineSync()!);
  double weight = double.parse(stdin.readLineSync()!);
  print("BMI = ${BMICalculator.bmi(height, weight)}");
}
