library exception;

class Exception
{
  String? clause;
  Exception(this.clause);
}

main()
{
  Exception e1 = Exception("This is my exception");
  try
  {
    throw e1;
  }
  on Exception
  {
    print(e1.clause);
  }
  finally
  {
    print("Finally it's done....");
  }
}