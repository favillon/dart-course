class Person {
  String name;
  int oldYear;

  Person(this.name, this.oldYear);
  void printName() => print('Name: $name,  Old: $oldYear');
}

class Client extends Person {
  String? address;
  List order = [];

  Client(int currentOldYear, String currentName):
    super(currentName, currentOldYear);
}
void main(List<String> args) {
  final me = new Person('Andres', 32);
  me.printName();

  final you = new Client(32, 'Pacho');
  you.printName();
}

