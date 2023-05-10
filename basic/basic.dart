void main() {
  msgHello();
  dataTypes();
  viewString();
  viewBoolean();
  viewLists();
  viewSets();
  viewMaps();
}

void msgHello() {
  print('Hola mundo');
}

void dataTypes() {
  // Numeros
  var a = 10;
  print(a);
  double b = 5.5;
  print(b);
  int? c;
  print(c);

  int _a = 30;
  double $b = 40.5; 
  print(_a+$b);
  var ab$cd = 10;
  print(ab$cd);
  var _ = 10;
  print(_);
  // Invalid 
  //var _$$_# = 10;
  //print(_$$_#);
}

void viewString() {
  String name = 'Tony';
  String name2 = "Tony";

  print(name == name2);

  String name3 = "O'conor";
  String name4 = '''
    Hola mundo desde 
    $name
    multilinea  con Ap'asdad
  ''';
  print(name3);
  print(name4);
  String fullName = '$name $name3';
  print(fullName);
}

void viewBoolean() {
  bool isActive = true;
  bool isNotActive = !isActive;
  print(isActive);
  print(isNotActive);
  bool? valido;
  print('valido');
  print(valido);
}

void viewLists() {
  List<String> villains = ['Lex', 'Red Skull', 'Doom'];
  print(villains[0]);
  villains.add('Duende verde');
  villains.add('Duende verde');
  villains.add('Duende verde');
  villains.add('Duende verde');

  print(villains);
  print(villains.toSet());
}

void viewSets() {
  Set<String> villains = {'Lex', 'Red Skull', 'Doom'};
  villains.add('Duende verde');
  villains.add('Duende verde');
  villains.add('Duende verde');
  print(villains);
}

void viewMaps() {
  // Maps - Diccionarios / objetos literales
  Map<String, dynamic> ironman = {
    'nombre' : 'Tony Stark',
    'poder': 'Dinero' ,
    'nivel' : 900
  };
  print(ironman);
  print(ironman['nivel']);
  
  Map<int, dynamic> ironmanTwo = {
    1 : 'Tony Stark',
    2: 'Dinero' ,
    3: 900
  };
  print(ironmanTwo);
  print(ironmanTwo[3]);

  Map<String, dynamic> capitan = new Map();
  capitan.addAll({
    'nombre' : 'Steve',
    'poder': 'Fuerza' ,
    'nivel' : 5000
  });

  print(capitan);
  Map<int, int> tabla = {
    1:2,
    3:4,
    5:6,
    7:8,
    9:10
  };
  print(tabla[10]);
}