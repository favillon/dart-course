class Rectangle{
  int? baseRectangle;
  int? height;
  int? area;
  String? type;
  // Rectangle(); // Intantce of Rectangle
  factory Rectangle(int base, int height){
    if (base == height) {
      return Rectangle.square(base);
    } else{
      return Rectangle.rectangle(base, height);
    }
  }
  Rectangle.square(int base){
    this.baseRectangle = base;
    this.height = base;
    this.area= base * base;
    this.type = 'Square';
  }
  Rectangle.rectangle(int base, int height){
    this.baseRectangle = base;
    this.height = height;
    this.area= base * height;
    this.type = 'Rectangle';
  }
  @override
  String toString() {
    return  { 'base' : baseRectangle, ' height' : height, 'area': area, 'type': type}.toString();
  }
}

void main(List<String> args) {
  final figure = new Rectangle(5,5);
  print(figure);
  final figureTwo = new Rectangle(10,15);
  print(figureTwo);
}