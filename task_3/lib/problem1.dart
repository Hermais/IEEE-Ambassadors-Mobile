import 'dart:math';



int descendingOrder(int n){
  List<int> digits = asDigits(n);
  digits.sort();
  return toIntFromList(digits);
}

List<int> asDigits(int n) {
  List<int> digits = [];
  while (n > 0) {
    digits.add(n % 10);
    n = n ~/ 10;
  }
  return digits;
}

int toIntFromList(List<int> digits) {
  int n = 0;
  for (int i = 0; i < digits.length; i++) {
    n += (digits[i] * pow(10, i)).toInt();
  }
  return n;
}
