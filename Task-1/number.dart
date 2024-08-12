void main() {
  String num = "12.36";
  int num_int = int.parse(num.substring(0, 2));
  double num_double = double.parse(num);
  print("Integer: $num_int");
  print("Double: $num_double");
}
