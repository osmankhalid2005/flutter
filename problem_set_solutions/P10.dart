import 'dart:io';

void main() {
  // Taking an integer as input
  print('Enter an integer: ');
  int number = int.parse(stdin.readLineSync()!);

  // Counting the number of digits
  int digitCount = number.abs().toString().length;

  // Outputting the number of digits
  print('The number of digits in $number is: $digitCount');
}
