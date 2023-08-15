void main() {
  final personOne = new Person(name:'Andres', old:30, bio:'Cali');
  print(personOne.toString());

  final personTwo = new Person(name:'Carlos', old:10, bio:'Bucaramanga');
  personTwo
           ..id=123456;

  print(personTwo);

  final personThree = new Person(name:'Arturo', old:20, bio:'Boyaca');
  print(personThree);

  final personFour = new Person.OldYears30('Pato', 'Santa Marta');
  print(personFour);
}

class Person {
  // Propiedades
  String? name;
  int? old;
  String? bio;
  int _id = 0;

  // Get Set
  int get id {
    return _id;
  }
  // String get id => _id
  set id(int id) {
    _id = id;
  }
  // set id(int id) => _id = id;

  // Contructores
  Person({ name ='Sin Nombre', old = 0, bio = 'Sin Ciudad' })
  {
    print('constructor');
    this.name = name;
    this.old = old;
    this.bio = bio;
  }

  Person.OldYears30(this.name, this.bio)
  {
    this.old = 30;
  }
  // Metodos
  @override
  String toString() {
    return 'Hola $name edad : $old Nacio : $bio Identificacion : $id';
  }
}