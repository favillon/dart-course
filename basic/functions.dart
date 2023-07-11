void main() {
  greet('Hola');
  greet('Hola', 'Mundo');
  greet('Hola', 'Mundo', 50);
  greetTwo('Holiiss', name: 'Tony');

  //Arrow Function
  print(plusArrow(10, 20));
  List<int> list =[1,2,2,3,4,5,6,6,7,8,9,10,1];
  var newList = list.where( (num) {
    return num > 4;
  });
  print(newList);
  var newListArrow = list.where( (num) => num > 4);
  print(newListArrow.toSet().toList());
}

void greet(String msg, [String name='<name>', int? years]) {
  print('$msg $name $years');
}

void greetTwo(
  String? msg,
  {
    int? years = 10,
    required String name,
  }
){
  print('Greet Two - $msg $name $years');
}

int plusArrow(int x , int y) => x+y;