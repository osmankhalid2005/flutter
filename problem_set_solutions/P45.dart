void main() {
  // Generate the first 10 Fibonacci numbers
  List<int> fibonacci = [0, 1];
  for (int i = 2; i < 10; i++) {
    fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
  }

  // Use collection if to include only numbers greater than 10
  List<int> filteredFibonacci = [
    for (var num in fibonacci)
      if (num > 10) num
  ];

  // Print the result
  print('First 10 Fibonacci numbers: $fibonacci');
  print('Fibonacci numbers greater than 10: $filteredFibonacci');
}
