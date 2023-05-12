void main() {
  viewOperator();
  viewAssignment();
}


void viewOperator(){
  int a = 10+5; // 15
  a = 20 - 10; // -10
  a = 10 * 2; // 20

  double b =10 /2; // 5
  b = 10.0 % 3;    // 1
  b = -b;         // Cambia el valor de la  expresion

  int c = 10~/3;      // 3

  int d=1;
  d++;
  d--;

  d+=2;
  d-=2;
}

void viewAssignment() {
  int a = 10;
  int? b;
  b ??=20;  // Asigna si el valor unicamente de la variable es null
  print(b);

  int? c;
  c=23;
  String resp = c >25 ? 'mayor a 25' : 'Es menor';
  print(resp);

  int?  dd;
  int? d = dd ?? a;
  print(d);

  int i=10;
  String j = '10';

  print(i is int);
  print(j is int);
  print(j is! int);

}
