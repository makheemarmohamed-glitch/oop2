abstract class Shape {
  String color;

  Shape(this.color);

  double getArea();
  String toString();
}

class ShapeRectangle extends Shape {
  int length;
  int width;

  ShapeRectangle(this.length, this.width, String color) : super(color);

  double getArea() => (length * width).toDouble();

  String toString() => "Rectangle[$length x $width, color=$color]";
}

class ShapeTriangle extends Shape {
  int base;
  int height;

  ShapeTriangle(this.base, this.height, String color) : super(color);

  double getArea() => (base * height) / 2.0;

  String toString() => "Triangle[base=$base, height=$height, color=$color]";
}

void main() {
  List<Shape> shapes = [
    ShapeRectangle(4, 5, "red"),
    ShapeTriangle(6, 8, "blue"),
  ];

  for (var s in shapes) {
    print("${s.toString()} → area = ${s.getArea()}");
  }
}