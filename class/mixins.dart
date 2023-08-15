import 'dart:developer';

mixin Logger {
  void printText(String text){
    final today = DateTime.now();
    print('$today  :::: $text');
  }
}

abstract class Astro with Logger {
  String? name;

  Astro() {
    printText('Init Astro');
  }
  void exist(){
    printText('-- I Am Cellestial');
  }
}

class Asteroid extends Astro {
  String? name;
  Asteroid(this.name) {
    printText('Soy $name');
  }
}
void main() {
  final ceres = new Asteroid('Ceres');
  print(ceres.name);
}