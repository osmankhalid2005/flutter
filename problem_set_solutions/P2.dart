import 'dart:io';

void main() {
  // Taking first number as input
  print('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  // Taking second number as input
  print('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  // Calculating sum, difference, product, and quotient
  double sum = num1 + num2;
  double difference = num1 - num2;
  double product = num1 * num2;
  double quotient = num1 / num2;

  // Outputting the results
  print('Sum: $sum');
  print('Difference: $difference');
  print('Product: $product');
  print('Quotient: $quotient');
}
