void sumOfDigits(int number) {
  int sum = 0;
  int temp = number;

  while (temp > 0) {
    sum += temp % 10;
    temp ~/= 10;
  }

  print('The sum of the digits of $number is $sum');
}

void main() {
  // Test the function with different inputs
  sumOfDigits(123); // The sum of the digits of 123 is 6
  sumOfDigits(456); // The sum of the digits of 456 is 15
  sumOfDigits(789); // The sum of the digits of 789 is 24
}
