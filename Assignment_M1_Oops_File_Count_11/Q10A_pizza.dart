library pizza;

class Pizza
{
  String _size = "small";
  int _cheezeToppings = 0;
  int _pepperoniToppings = 0;
  int _hamToppings = 0;

  Pizza(this._size, this._cheezeToppings, this._pepperoniToppings,
      this._hamToppings);

  int get hamToppings => _hamToppings;

  set hamToppings(int value) {
    _hamToppings = value;
  }

  int get pepperoniToppings => _pepperoniToppings;

  set pepperoniToppings(int value) {
    _pepperoniToppings = value;
  }

  int get cheezeToppings => _cheezeToppings;

  set cheezeToppings(int value) {
    _cheezeToppings = value;
  }

  String get size => _size;

  set size(String value) {
    _size = value;
  }
  
  double calcCost()
  {
    switch(size)
    {
      case "large" :
        return((14.0+2*(cheezeToppings+pepperoniToppings+hamToppings)));

      case "medium" :
        return((12.0+2*(cheezeToppings+pepperoniToppings+hamToppings)));

      default :
        return((10.0+2*(cheezeToppings+pepperoniToppings+hamToppings)));
    }
  }
  getDescription()
  {
    print("A $size pizza with $cheezeToppings cheeze toppings $pepperoniToppings pepperoni toppings and $hamToppings ham toppings will cost ${calcCost()} dollars");
  }
}

main()
{
  List<Pizza> p = [];
  for(int i=0;i<30;i++)
  {
    if(i%3 == 0)
      {
        p.add(Pizza("small", i, i+1, i+2));
      }
    else if(i%2 == 0)
      {
        p.add(Pizza("medium", i, i+1, i+2));
      }
    else
      {
        p.add(Pizza("large", i, i+1, i+2));
      }

    p[i].getDescription();
  }
}