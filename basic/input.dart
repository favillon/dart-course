import 'dart:io';
import 'dart:math';

void main() {
  captureData();
}

void captureData() {
  stdout.writeln('What is your name?');
  String name = stdin.readLineSync() ?? 'Not has name';
  stdout.write('Your name is : $name \n');
  stdout.writeln('Old yearld?');
  int year = int.parse(stdin.readLineSync() ?? '0') ;
  stdout.writeln('Your year is $year');

  if (year>=18) {
    stdout.writeln('old');
  } else {
    stdout.writeln('teen');
  }

  for (var i = 0; i < year; i++) {
  if (i==2) {
    continue;
  }
  if(i==7){
    break;
  }
    print('Hello Word : $i');
  }
  List<String> list = ['Batman', 'Superman','Woman'];
  for (var heroe in list) {
    print(heroe);
  }
  String next = 'y';
  int counter = 0;
  while ( next == 'y') {
    counter++;
    stdout.writeln('COunter $counter');
    stdout.writeln('Continue (y/n)');
    next = stdin.readLineSync() ?? 'n';
  }
  counter=0;
  next='y';
  do {
    counter++;
    stdout.writeln('Counter do while $counter');
    stdout.writeln('Continue (y/n)');
    next = stdin.readLineSync() ?? 'n';
  } while (next == 'y');

  forInit:
  for (int i = 0; i < 5; i++) {
    print('i is : $i');
    forMiddle:
    for (int j = 0; j < 5; j++) {
      print('j is : $j');
      if (j==3){
      break forInit;
      }
    }
  }
  int rnd =  Random().nextInt(8);
  print('Random Number:  $rnd');
  switch (rnd) {
    case 1:
        print('Lunes');
      break;
    case 2:
        print('Martes');
      break;
    case 3:
        print('Miercoles');
      break;
    default:
        print('No valido');
  }
}