abstract class Car
{
  int? speed;
  double regularPrice=0;
  String? color;
  double getSalePrice();

  Car(this.speed, this.regularPrice, this.color);
}

class Truck extends Car
{
  int? weight;
  double getSalePrice()
  {
    double salePrice;
    if(weight! > 2000)
      salePrice=regularPrice-(regularPrice/100)*10;
    else
      salePrice=regularPrice-(regularPrice/100)*20;
    return(salePrice);
  }

  Truck(this.weight, int? s, double r, String? c) : super(s, r, c);
}

class Ford extends Car
{
  int? year;
  int manufacturerDiscount = 0;
  double getSalePrice()
  {
    return(regularPrice-manufacturerDiscount);
  }

  Ford(this.year, this.manufacturerDiscount, int? s, double r, String c) : super(s, r, c);
}

class Sedan extends Car
{
  int? length;
  double getSalePrice()
  {
    double salePrice;
    if(length! > 20)
      salePrice=regularPrice-(regularPrice/100)*5;
    else
      salePrice=regularPrice-(regularPrice/100)*10;
    return(salePrice);
  }
  Sedan(this.length, int? s, double r, String? c) : super(s, r, c);
}

main()
{
  Sedan s1 = Sedan(20, 10, 12, "red");
  print(s1.color);
  print(s1.length);
}
