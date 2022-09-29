import 'Q2_newException.dart';

main()
{
  try
      {
        NewException e1 = NewException(null);
        e1.printClause();
      } catch(e)
      {
        print(e);
      }
}