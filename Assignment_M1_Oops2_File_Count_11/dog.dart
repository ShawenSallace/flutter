class Dog
{
  String _breed, _color;
  int _age;

  Dog(this._breed, this._color, this._age);


  String get breed => _breed;

  set breed(String value) {
    _breed = value;
  }

  bark()
  {
    print("$_breed : Bark Bark!");
  }
  sleep()
  {
    print("$Dog zzzzzZ");
  }

  get color => _color;

  set color(value) {
    _color = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }
}

main()
{
  Dog d1 = Dog("Husky", "Blue", 2);
  d1.bark();
}