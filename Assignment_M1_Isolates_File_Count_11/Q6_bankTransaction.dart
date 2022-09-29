import 'dart:async';
import 'dart:io';
class SavingsAccount
{
  static double _intrestRate = 12;
  double _savings = 0;
  SavingsAccount(double s)
  {
    _savings = s;
  }
  static changeIntrestRate(double c)
  {
    _intrestRate = c;
  }
  settleAmount()
  {
    _savings += (_savings/100)*_intrestRate/12;
  }

  double get savings => _savings;
  
  deposit(double amount)
  {
    _savings += amount;
    print("Deposited $amount");
  }
  
  withdraw(double amount)
  {
    if(_savings >= (5000 + amount))
      {
        _savings -= amount;
        print("Withdrawn $amount");
      }
    else
      {
        print("Insufficient balance");
      }
  }
}

transaction() async
{
  bool c = true;
  SavingsAccount s1 = SavingsAccount(20000);
  do
  {
    print("1.Withdraw\n2.Deposit\n3.View balance\n4.exit");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice)
    {
      case 1 : print("Enter amount to withdraw");
      double amount = double.parse(stdin.readLineSync()!);
      s1.withdraw(amount);
      break;
      case 2 : print("Enter amount to deposit");
      double amount = double.parse(stdin.readLineSync()!);
      s1.deposit(amount);
      break;
      case 3 : double savings = s1.savings;
      print("Savings : $savings");
      break;
      case 4 : c = false;
               break;
      default : print("Invalid choice");
    }
  } while(c);
}

main() async
{
  await transaction();
}