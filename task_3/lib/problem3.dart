import 'dart:math';

double stackHeight(int layers) {
  if (layers == 1) {
    return 1.0;
  }
  return (layers - 1) * sqrt(3) / 2 + 1;
}

void main() {
  print(stackHeight(6));
}
