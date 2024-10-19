void main() {
  // Create a list of integers
  List<int> numbers = [10, 15, 20, 25, 30, 35, 40];

  // Filter out even numbers
  List<int> evenNumbers = numbers.where((number) => number.isEven).toList();

  // Filter out odd numbers
  List<int> oddNumbers = numbers.where((number) => number.isOdd).toList();

  // Print the lists of even and odd numbers
  print('Even numbers: $evenNumbers');
  print('Odd numbers: $oddNumbers');
}
