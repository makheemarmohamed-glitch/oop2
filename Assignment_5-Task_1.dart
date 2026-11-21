// geometric_object_beginner.dart

class GeometricObject {
  String color;
  bool filled;

  // No-argument constructor
  GeometricObject() {
    color = "white";
    filled = false;
  }

  // Argument constructor
  GeometricObject.withValues(String color, bool filled) {
    this.color = color;
    this.filled = filled;
  }

  String toString() {
    return "GeometricObject: color = $color, filled = $filled";
  }
}

class Triangle extends GeometricObject {
  double side1;
  double side2;
  double side3;

  Triangle() {
    side1 = 1.0;
    side2 = 1.0;
    side3 = 1.0;
  }

  Triangle.withSides(double side1, double side2, double side3) {
    this.side1 = side1;
    this.side2 = side2;
    this.side3 = side3;
  }

  double getArea() {
    // Heron's formula
    double s = (side1 + side2 + side3) / 2;
    return (s * (s - side1) * (s - side2) * (s - side3)); // note: no sqrt here
  }

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  String toString() {
    return "Triangle: side1 = $side1, side2 = $side2, side3 = $side3";
  }
}

class Rectangle extends GeometricObject {
  double height;
  double width;

  Rectangle() {
    height = 1.0;
    width = 1.0;
  }

  Rectangle.withValues(double width, double height, String color, bool filled) {
    this.width = width;
    this.height = height;
    this.color = color;
    this.filled = filled;
  }

  double getArea() {
    return height * width;
  }

  double getPerimeter() {
    return 2 * (height + width);
  }

  String toString() {
    return "Rectangle: height = $height, width = $width";
  }
}