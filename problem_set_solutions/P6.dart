import 'dart:io';

void main() {
  // Taking principal amount as input
  print('Enter the principal amount (P): ');
  double principal = double.parse(stdin.readLineSync()!);

  // Taking rate of interest as input
  print('Enter the rate of interest (R): ');
  double rate = double.parse(stdin.readLineSync()!);

  // Taking time period as input
  print('Enter the time period in years (T): ');
  double time = double.parse(stdin.readLineSync()!);

  // Calculating simple interest
  double simpleInterest = (principal * rate * time) / 100;

  // Outputting the simple interest
  print('The Simple Interest is: \$${simpleInterest.toStringAsFixed(2)}');
}
