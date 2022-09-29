import 'dart:io';

class Date
{
  int? month, day, year;
  Date(int m,int d,int y)
  {
    month = m;
    day = d;
    year = y;
  }
  setMonth(int m)
  {
    month = m;
  }
  int? getMonth()
  {
    return(month);
  }
  setDay(int d)
  {
    day = d;
  }
  int? getDay()
  {
    return(day);
  }
  int? getYear()
  {
    return(year);
  }
  setYear(int y)
  {
    year = y;
  }
  String? displayDate()
  {
    return("$month/$day/$year");
  }
}

dateTest()
{
  print("Enter a month, day and year");
  int m = int.parse(stdin.readLineSync()!);
  int d = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);
  Date d1 = Date(m, d, y);
  print("Date is ${d1.displayDate()}");
}

void main()
{
  dateTest();
}