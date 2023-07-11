String capitalize(String text) {
  text = text.toUpperCase();
  return text;
}

Map<String, String> capitalizeMap(Map<String, String> map) {
  //Romper referencia
  map = { ...map };

  // forzado
  //map['name'] = map['name']!.toUpperCase() ?? 'No hya nombre';
  // execpcion
  map['name'] = map['name']?.toUpperCase() ?? 'No hya nombre';

  return map;
}

void main(List<String> args) {
  String name = 'Andres';
  String nameTwo = capitalize(name);
  print(name);
  print(nameTwo);

  Map<String, String> person = {
    'name' : 'klan Ken'
  };
  Map<String, String> personTwo = capitalizeMap(person);
  print(person);
  print(personTwo);
}
