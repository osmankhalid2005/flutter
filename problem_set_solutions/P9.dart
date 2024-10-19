import 'dart:io';

void main() {
  // Taking a number as input
  print('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  // Generating the multiplication table
  print('Multiplication table for $number:');
  for (int i = 1; i <= 10; i++) {
    print('$number x $i = ${number * i}');
  }
}
