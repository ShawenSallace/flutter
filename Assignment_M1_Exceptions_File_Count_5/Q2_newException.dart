library newException;
import 'Q1_tryCatchFinally.dart';
class NewException extends Exception
{
  NewException(super.clause);

  printClause() => print("${clause!.length} $clause");
}
main()
{
  NewException ne1 =NewException("This is my new exception");
  try
      {
        throw ne1;
      }
  on NewException
      {
        print(ne1.clause);
      }
}