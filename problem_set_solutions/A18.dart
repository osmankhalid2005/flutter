import 'dart:math';
final outerFunction = (int x) => (int y) => x + pow(y, 3);

void main() {

  // Outer arrow function

  // Usage

  final result = outerFunction(5)(3);

  print('Result: $result'); // Output: Result: 8

}
