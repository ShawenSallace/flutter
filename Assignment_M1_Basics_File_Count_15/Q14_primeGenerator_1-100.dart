void main()
{
  for(int i=2;i<100;i++)
    {
      for(int j=2;j<51;j++)
      {
        if (i != j)
        {
          if (i % j == 0)
            break;
          else
            continue;
        }
        print(i);
      }
    }
}