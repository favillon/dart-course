class Square{
 final int side;
 final int area;
// Error
//  Square(int side, int area) {
//   this.side = side;
//   this.area = area;
//  }
// Square(this.side, this.area);

Square(int side) :
  this.side = side,
  this.area= side * side;
}

void main(List<String> args) {
  final square = new Square(10);
  print(square.area);
}