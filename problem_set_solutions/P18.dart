void main() {
  // Create a list of integers
  List<int> numbers = [34, 7, 23, 32, 5, 62];

  // Sort the list in ascending order
  numbers.sort();
  print('List in ascending order: $numbers');

  // Sort the list in descending order
  numbers.sort((a, b) => b.compareTo(a));
  print('List in descending order: $numbers');
}
