class Car
{
  String _model;
  double _Price;

  Car(this._model, this._Price);

  double get Price => _Price;

  set Price(double value) {
    _Price = value;
  }

  String get model => _model;

  set model(String value) {
    _model = value;
  }

  start()
  {
    print("Accelerating from rest");
  }
  stop()
  {
    print("Nullifying existing velocity with respect to ground");
  }
  move()
  {
    print("Maintaining velocity");
  }
}

class Driver
{
  String _name;
  int _age;

  Driver(this._name, this._age);

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  drive(Car c1)
  {
    print("Drive starting");
    c1.start();
    c1.move();
    c1.stop();
    print("Drive finished");
  }
}

main()
{
  Driver d1 = Driver("Shawen", 12);
  Car c1 = Car("Royce", 12000);
  d1.drive(c1);
}