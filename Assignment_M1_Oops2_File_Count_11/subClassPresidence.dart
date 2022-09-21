class SubException implements Exception
{
  printException()
  {
    print("subException has occurred");
  }
}

class ChildException implements SubException
{
  @override
  printException() {
    // TODO: implement printException
    print("childException has occurred");
  }
}

main()
{
  try
      {
        throw SubException;
      }
  catch(e)
  {
    print(e);
  }

  try
      {
        throw ChildException;
      }
  catch(e)
  {
    print(e);
  }
}