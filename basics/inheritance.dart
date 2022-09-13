class Child
{
  var name;
  var age;
  Child(var n,var a)
  {
    name=n;
    age=a;
  }
  void display()
  {
    print(name);
    print(age);
  }
}
class Student extends Child
{
  var school;
  Student() : super(null,null){}
  void display()
  {
    print(name);
    print(age);
    print(school);
  }
}
void main()
{
  Student s1 = Student();
  s1.name = "Shawen";
  s1.age = 12;
  s1.school = "abz";
  s1.display();
}