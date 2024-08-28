import 'dart:math';

double stackHeight2d(int layers) {
  if (layers == 0) {
    return 0.0;
  }
  return (layers - 1) * sqrt(3) / 2 + 1;
}

