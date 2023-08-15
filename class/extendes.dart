class Vehicle {
  bool isOn = false;

  void vehicleOn(){
    isOn = true;
    print('Vehicle On');
  }
  void vehicleOff(){
    isOn = false;
    print('Vehicle Off');
  }
}

class Car extends Vehicle {
  int miliage = 0;
}

void main(List<String> args) {
  final ford = new Car();
  print('Me Car');
  ford.vehicleOn();
  ford.vehicleOff();
}