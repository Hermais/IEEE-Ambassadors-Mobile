import 'dart:io';

class Laptop {
  String brand;
  String model;
  int ram; // in GB
  double? price;

  Laptop(this.brand, this.model, this.ram) {
    price = calculatePrice();
  }

  double calculatePrice() {
    double basePrice;

    switch (brand.toLowerCase()) {
      case 'dell':
        basePrice = 500.0;
        break;
      case 'hp':
        basePrice = 450.0;
        break;
      case 'lenovo':
        basePrice = 400.0;
        break;
      default:
        basePrice = 300.0;
    }

    switch (model.toLowerCase()) {
      case 'xps':
        basePrice += 200.0;
        break;
      case 'spectre':
        basePrice += 150.0;
        break;
      case 'thinkpad':
        basePrice += 100.0;
        break;
      default:
        basePrice += 50.0;
    }

    basePrice += ram * 20.0;

    return basePrice;
  }

  void display() {
    print('Brand: $brand');
    print('Model: $model');
    print('RAM: $ram GB');
    print('Price: \$${price!.toStringAsFixed(2)}');
  }
}

void main() {
  print('Enter laptop brand (e.g., Dell, HP, Lenovo):');
  String brand = stdin.readLineSync()!;

  print('Enter laptop model (e.g., XPS, Spectre, ThinkPad):');
  String model = stdin.readLineSync()!;

  print('Enter RAM size (in GB):');
  int ram = int.parse(stdin.readLineSync()!);

  Laptop laptop = Laptop(brand, model, ram);
  laptop.display();
}
