import 'dart:io';
class Employee
{
  String _firstName, _lastName;
  double _salary = 0;
  List <List> _leaveRecord = [];
  int _workingDays = 365;
  Employee(this._firstName, this._lastName, this._salary);

  double get salary => _salary;

  set salary(double value) {
    _salary = value;
  }

  get lastName => _lastName;

  set lastName(value) {
    _lastName = value;
  }

  String get firstName => _firstName;

  set firstName(String value) {
    _firstName = value;
  }

  salaryCalculation(double raise)
  {
    _salary += (_salary/100)*raise;
  }

  takeLeave(String date, int numOfDays, String? reason)
  {
    _leaveRecord.add([date,numOfDays,reason]);
    _workingDays -= numOfDays;
  }

  displayLeaveRecord()
  {
    print(_leaveRecord);
  }

  leaveCalculation()
  {
    print("${(_workingDays/365)*100}% presence");
  }
}

employeeSalary(List <Employee> e)
{
  bool choice = true;
  int i = 0;
  do
    {
      print("Enter first name:");
      String firstName = stdin.readLineSync()!;
      print("Enter last name:");
      String lastName = stdin.readLineSync()!;
      print("Enter salary:");
      double salary = double.parse(stdin.readLineSync()!);
      e.add(Employee(firstName, lastName, salary));
      print("Details successfully entered. Would you like to make another entry\n1.yes\n2.no");
      int c = int.parse(stdin.readLineSync()!);
      switch(c)
      {
        case 2: choice = false;
                break;
        case 1: i++;
                break;
        default : print("Invalid choice");
                  exit(-1);
      }
    } while(choice);
  int length = i+1;
  print("Displaying Employee details\nFirst Name\tLast Name\tSalary");
  for(int i = 0 ;i< length; i++)
  {
    print("${e[i].firstName}\t${e[i].lastName}\t${e[i].salary}");
  }
  print("Everyone gets their salary raised my 10%!");
  print("Displaying Employee details\nFirst Name\tLast Name\tSalary");
  for(int i = 0 ;i< length; i++)
  {
    e[i].salaryCalculation(10);
    print("${e[i].firstName}\t${e[i].lastName}\t${e[i].salary}");
  }
}

main()
{
  List <Employee> e = [];
  employeeSalary(e);
  int length =  e.length-1;
  print("do you want to take leave?\n1.yes\n2.no");
  int c = int.parse(stdin.readLineSync()!);
  while(c == 1)
    {
      print("Enter employee id ranging from 0 to $length");
      int id = int.parse(stdin.readLineSync()!);
      print("Enter date:");
      String date = stdin.readLineSync()!;
      print("Enter number of days:");
      int numOfDays = int.parse(stdin.readLineSync()!);
      print("Enter reason:");
      String reason = stdin.readLineSync()!;
      e[id].takeLeave(date, numOfDays, reason);
      print("Leave successfully taken. Do you want to schedule another leave?\n1.yes\n2.no");
      c = int.parse(stdin.readLineSync()!);
    }
  print("Calculate employee attendance?\n1.yes\n2.no");
  c = int.parse(stdin.readLineSync()!);
  while(c == 1)
    {
      print("Enter employee id ranging from 0 to $length");
      int id = int.parse(stdin.readLineSync()!);
      e[id].leaveCalculation();
      print("Do you want to continue calculation?\n1.yes\n2.no");
      c = int.parse(stdin.readLineSync()!);
    }
}
