import 'pizza.dart';

class PizzaTypeOrder
{
  List<Pizza> o = [];
  int i = 0;

  PizzaTypeOrder(int n, String s, int c, int p, int h)
  {
    for (i = 0; i < n; i++)
    {
      o.add(Pizza(s, c, p, h));
    }
  }

  double? calcTotalType()
  {
      return ((o[0].calcCost()) * i);
  }

}

main()
{
  PizzaTypeOrder pto1 = PizzaTypeOrder(1, "small", 1, 1, 1);
  PizzaTypeOrder pto2 = PizzaTypeOrder(1, "medium", 2, 2, 2);
  double total = pto1.calcTotalType()! + pto2.calcTotalType()!;
  print(total);
}