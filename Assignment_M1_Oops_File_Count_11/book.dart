class Book
{
  String? name, author, publisher;
  int? ISBN;

  Book(this.name, this.author, this.publisher, this.ISBN);

  get getISBN => ISBN;

  get getPublisher => publisher;

  get getAuthor => author;

  get getName => name;

  set setISBN(int value) {
    ISBN = value;
  }

  set setPublisher(value) {
    publisher = value;
  }

  set setAuthor(value) {
    author = value;
  }

  set setName(String value) {
    name = value;
  }

  String? getBookInfo()
  {
    return("Book ${this.name} is written by ${this.author}, published by ${this.publisher},ISBN number :${this.ISBN}");
  }
}
testBook()
{
  List<Book> b = [];
  print("Creating 30 books as example...");
  for(int i=0;i<30;i++)
    {
      b.add(Book("n$i", "a$i", "p$i", i));
      print("${b[i].getBookInfo()}");
    }
}
main()
{
  testBook();
}