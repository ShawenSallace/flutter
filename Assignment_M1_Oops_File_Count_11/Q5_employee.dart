class Employee
{
  String? firstName, lastName;
  double salary = 0;
  Employee(String a,String b,double s)
  {
    firstName = a;
    lastName = b;
    if(s >= 0)
      salary = s;
    else
      salary = 0;
  }
  setFirstName(String a)
  {
    firstName = a;
  }
  String? getFirstName()
  {
    return(firstName);
  }
  setLastName(String a)
  {
    lastName = a;
  }
  String? getLastName()
  {
    return(lastName);
  }
  double? getSalary()
  {
    return(salary);
  }
  setSalary(double s)
  {
    if(s >= 0)
      salary = s;
    else
      salary = 0;
  }
  raise(double r)
  {
    salary += (salary/100)*r;
  }
}

employeeTest()
{
  Employee e1 = Employee("a", "b", 100), e2 = Employee("c", "d", 150);
  print("Displaying employee details\n1.${e1.firstName} ${e1.lastName} ${(e1.salary)*12}\n2.${e2.firstName} ${e2.lastName} ${(e2.salary)*12}");
  print("Everyone gets their salary raised by 10%!");
  e1.raise(10);
  e2.raise(10);
  print("Displaying employee details\n1.${e1.firstName} ${e1.lastName} ${(e1.salary)*12}\n2.${e2.firstName} ${e2.lastName} ${(e2.salary)*12}");
}
void main()
{
  employeeTest();
}