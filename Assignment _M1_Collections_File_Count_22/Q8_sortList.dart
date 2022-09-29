import 'dart:io';
selectionSort(List<int> n)
{
  int length = n.length;
  int m = length-1;
  int smallest = n[0];
  int smallestIndex = 0;
  for(int i = 0; i<m; i++)
    {
      for(int j= i+1; j<length; j++)
      {
        if(n[j] < smallest)
          {
            smallest = n[j];
            smallestIndex = j;
          }
      }
      n[smallestIndex] = n[i];
      n[i] = smallest;
      smallest = n[i+1];
    }
}
main()
{
  List<int> n = [7,8,3,20,12,33,22];
  print("$n\nsorting using inbuilt function:");
  n.sort();
  stdout.write(n);
  n = [7,8,3,20,12,33,22];
  print("\n\n$n\nsorting using selectionSort function:");
  selectionSort(n);
  stdout.write(n);
}