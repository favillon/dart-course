class Tools{
  static List<String> list = ['Martillo', 'desarmador', 'Llave inglesa'];
  static const List<String> listOnlyRead = ['Martillo', 'desarmador', 'Llave inglesa'];
  static void printList() => listOnlyRead.forEach(print);
}

void main(List<String> args) {
  // Problema de agregar atributos en cualqueir parte del codigo
  Tools.list.add("Tenazas");
  Tools.list.forEach(print);

  //Tools.listOnlyRead.add("Tenazas"); // No permite agregar
  Tools.listOnlyRead.forEach(print);
  Tools.printList();
}