import 'dart:io';
class Page
{
  String? _username, _password;
  static List <Page> l = [];

  Page.create(List <String?> list)
  {
    _username = list[0];
    _password = list[1];
    l.add(this);
    print("created");
  }
  static login(List <String?> list)
  {
    int length = l.length;
    for(int i = 0; i < length; i++)
      {
        if(l[i]._username == list[0] && l[i]._password == list[1])
          {
            print("Welcome ${list[0]}");
          }
      }
  }
}
loginRoutine() async
{
  bool c = true;
  do
  {
    print("1.Create account\n2.Sign in");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice)
    {
      case 1 : print("Enter username:");
      String? u = stdin.readLineSync();
      print("Enter password:");
      String? p = stdin.readLineSync();
      Page.create([u,p]);
      break;
      case 2 : print("Enter username:");
      String? u = stdin.readLineSync();
      print("Enter password:");
      String? p = stdin.readLineSync();
      Page.login([u,p]);
    }
    print("Do you want to continue \n1.Yes\n2.No");
    choice = int.parse(stdin.readLineSync()!);
    if(choice != 1)
    {
      c = false;
    }
  } while(c);
}
main() async
{
  await loginRoutine();
}