class Student
{
  var rollNum;
  var name;
  var height;
  var weight;

  void insertRecord(var name,var rollNum,var height,var weight)
  {
    this.name=name;
    this.rollNum=rollNum;
    this.height=height;
    this.weight=weight;
  }
   Student()
   {}
   Student.First(var name)
  {
    this.name=name;
  }
   Student.Second(var name,var rollNum,var height,var weight)
  {
    this.name=name;
    this.rollNum=rollNum;
    this.height=height;
    this.weight=weight;
  }
  double calculateBMI(var height,var weight)
  {
  return((weight/(height*height)));
  }
  void displayRecord()
  {
    print(name);
    print(rollNum);
    print(height);
    print(weight);
    print(calculateBMI(height, weight));
  }
}
void main()
{
  Student s1 = Student() ,s2 = Student(),s3 = Student.Second("Richard",1,2,3),s4 = Student.Second("Parvathi", 21,1,2);
  s1.rollNum=12;
  s1.name="Shawen";
  s1.height=4;
  s1.weight=5;
  print(s1.name);
  print(s1.rollNum);
  print(s1.height);
  print(s1.weight);
  s2.insertRecord("Tiger", 31,2,3);
  s2.displayRecord();
  s3.displayRecord();
  s4.displayRecord();
}