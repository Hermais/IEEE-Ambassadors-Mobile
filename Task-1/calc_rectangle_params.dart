import 'dart:io';

void main() {
  double length, width, area, perimeter;
  print("Enter the length of the rectangle:");
  length = double.parse(stdin.readLineSync() ?? '12.0');
  print("Enter the width of the rectangle:");
  width = double.parse(stdin.readLineSync() ?? '6.0');

  area = length * width;
  perimeter = 2 * (length + width);
  print("Length: $length");
  print("Width: $width");
  print("Area: $area");
  print("Perimeter: $perimeter");


}
