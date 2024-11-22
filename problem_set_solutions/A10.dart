import 'dart:math';

void main() {
  print(Z(4, 5)(3, 4));
}

var Z = (int x, int y) =>
    (int p, int q) => x * x + 4 * y * y - 8 * pow(p * p + q * q, 2);
