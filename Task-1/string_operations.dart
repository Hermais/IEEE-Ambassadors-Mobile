void main() {
  String var1 = "Hello";
  String var2 = " World!";
  String conc_var = var1 + var2;
  print("Concatenated String: $conc_var");
  print("Lendth: ${conc_var.length}");
  print("Substring: ${conc_var.substring(0, 7)}");
  print("UpperCase: ${conc_var.toUpperCase()}");
  print("LowerCase: ${conc_var.toLowerCase()}");
}
