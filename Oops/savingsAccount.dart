import 'dart:io';

class SavingsAccount
{
  static double intrestRate = 12;
  double savings = 0;
  SavingsAccount(double s)
  {
    savings = s;
  }
  static changeIntrestRate(double c)
  {
    intrestRate = c;
  }
  settleAmount()
  {
    savings += (savings/100)*intrestRate/12;
  }
}

void testSavingsAccount()
{
  print("Enter savings amount for 2 accounts");
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  SavingsAccount s1 = SavingsAccount(a), s2 = SavingsAccount(b);
  print("Current intrest rate is 12%\ncompleting this month's payments...");
  s1.settleAmount();
  s2.settleAmount();
  print("New amounts\n${s1.savings} ${s2.savings}");
  print("2nd month is here...\nChanged intrest rate..\nCurrent intrest rate is 10%");
  SavingsAccount.changeIntrestRate(10);
  s1.settleAmount();
  s2.settleAmount();
  print("New amounts\n${s1.savings} ${s2.savings}");
}
main()
{
  testSavingsAccount();
}