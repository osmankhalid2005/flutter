import 'dart:io';

void main() {
  // Prompt the user to enter the first number
  print('Enter the first number:');
  double? num1 = double.tryParse(stdin.readLineSync()!);

  // Prompt the user to enter the second number
  print('Enter the second number:');
  double? num2 = double.tryParse(stdin.readLineSync()!);

  // Prompt the user to enter an operator
  print('Enter an operator (+, -, *, /):');
  String? operator = stdin.readLineSync();

  // Check if the numbers are valid
  if (num1 == null || num2 == null || operator == null) {
    print('Invalid input');
    return;
  }

  // Use a switch statement to perform the appropriate operation
  switch (operator) {
    case '+':
      print('Result: ${num1 + num2}');
      break;
    case '-':
      print('Result: ${num1 - num2}');
      break;
    case '*':
      print('Result: ${num1 * num2}');
      break;
    case '/':
      if (num2 != 0) {
        print('Result: ${num1 / num2}');
      } else {
        print('Error: Division by zero');
      }
      break;
    default:
      print('Invalid operator');
  }
}
