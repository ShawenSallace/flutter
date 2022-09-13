import 'dart:io';

class Invoice
{
  int? ID;
  String? description;
  double? price = 0, quantity = 0;
  Invoice(int i,String d,double p,double q)
  {
    ID = i;
    description = d;
    if(p >= 0)
     price = p;
    else
     price = 0;
    if(q >= 0)
     quantity = q;
    else
      quantity = 0;
  }
  int? GetID()
  {
   return(ID);
  }
  SetID(int a)
  {
    ID = a;
  }
  String? GetDes()
  {
    return(description);
  }
  SetDes(String d)
  {
    description=d;
  }
  double? GetPrice()
  {
    return(price);
  }
  SetPrice(double p)
  {
    if(p >= 0)
      price = p;
    else
      price = 0;
  }
  double? GetQ()
  {
    return(quantity);
  }
  SetGetQ(double q)
  {
    if(q >= 0)
      quantity = q;
    else
      quantity = 0;
  }
  double getInvoiceAmount()
  {
    return(quantity!*price!);
  }
}
InvoiceTest()
{
  Invoice i1 = Invoice(0, "", 0, 0);
  print("Invoice demonstration\nSelect a product\n1.Laptop\n2.Phone\n3.Sugar");
  int? product = int.parse(stdin.readLineSync()!);
  if(product == 1)
    {
      i1 = Invoice(1, "Laptop", 100000, 0);
      print("Enter quantity");
      i1.quantity = (double.parse(stdin.readLineSync()!)).roundToDouble();
    }
  else if(product == 2)
    {
      i1 = Invoice(2, "Phone", 10000, 0);
      print("Enter quantity");
      i1.quantity = (double.parse(stdin.readLineSync()!)).roundToDouble();
    }
  else
    {
      i1 = Invoice(3, "Sugar", 100, 0);
      print("Enter quantity");
      i1.quantity = double.parse(stdin.readLineSync()!);
    }
  print("Invoice\nID:${i1.GetID()}\nDescription:${i1.GetDes()}\nPrice:${i1.GetPrice()}\nQuantity:${i1.GetQ()}\nTotal:${i1.getInvoiceAmount()}");
}
main()
{
  InvoiceTest();
}