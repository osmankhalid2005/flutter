void main() {
  // Given list of integers
  List<int> numbers = [10, 20, 30, 40, 50];

  // Extract the first two elements
  int first = numbers[0];
  int second = numbers[1];

  // Assign the remaining elements to another list
  List<int> remaining = numbers.sublist(2);

  // Print the extracted elements
  print('First element: $first');
  print('Second element: $second');

  // Print the remaining elements
  print('Remaining elements: $remaining');
}
