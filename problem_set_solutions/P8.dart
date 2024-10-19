import 'dart:io';

void main() {
  // Taking a year as input
  print('Enter a year: ');
  int year = int.parse(stdin.readLineSync()!);

  // Checking if the year is a leap year
  bool isLeapYear = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);

  // Outputting the result
  if (isLeapYear) {
    print('$year is a leap year.');
  } else {
    print('$year is not a leap year.');
  }
}
