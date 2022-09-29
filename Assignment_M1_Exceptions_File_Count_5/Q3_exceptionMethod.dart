import 'Q2_newException.dart';
class ExceptionMethod
{
  invokeException()
  {
    NewException ne1 = NewException("Hello, I am your exception");
    //try
    //{
      throw ne1;
    //} on NewException
    //{
       print(ne1.clause);
    //}
  }
}

main()
{
  ExceptionMethod em1 = ExceptionMethod();
  try
  {
    em1.invokeException();
  } catch(e)
  {
    print("Trying");
  }
}