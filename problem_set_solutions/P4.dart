import 'dart:io';

void main() {
  // Taking three numbers as input
  print('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Enter the third number: ');
  double num3 = double.parse(stdin.readLineSync()!);

  // Finding the largest number
  double largest = num1;

  if (num2 > largest) {
    largest = num2;
  }

  if (num3 > largest) {
    largest = num3;
  }

  // Outputting the largest number
  print('The largest number is: $largest');
}
