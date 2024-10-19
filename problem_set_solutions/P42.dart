void main() {
  // Generate a list of numbers from 1 to 10 and include only even numbers
  List<int> evenNumbers = [
    for (var i = 1; i <= 10; i++)
      if (i % 2 == 0) i
  ];

  // Print the list of even numbers
  print('List of even numbers: $evenNumbers');
}
