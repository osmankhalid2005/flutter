void main() {
  // Create a list of integers with duplicate values
  List<int> numbers = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7, 8, 8, 9];

  // Convert the list to a set to remove duplicates
  Set<int> uniqueNumbers = numbers.toSet();

  // Print the original list
  print('Original list: $numbers');

  // Print the set (which removes duplicates)
  print('Set with unique elements: $uniqueNumbers');
}
