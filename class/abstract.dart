import 'extendes.dart';

abstract class Vehicle {
  bool isOn = false;

  void vehicleOn(){
    isOn = true;
    print('Vehicle On');
  }
  void vehicleOff(){
    isOn = false;
    print('Vehicle Off');
  }
  bool reviewEngine();
}

class Car extends Vehicle {
  int miliage = 0;

  @override
  bool reviewEngine() {
    print('Engine OK!');
    return true;
  }
}

void main(List<String> args) {
  //final Vehiculo = new Vehicle(); // Las clases asbtractas no dejan instanciar
  final ford = new Car();
  print('Me Car');
  ford.reviewEngine();
  ford.vehicleOn();
  ford.vehicleOff();
}