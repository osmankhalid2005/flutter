void main() {
  // Create a set of integers
  Set<int> numbers = {1, 2, 3, 4, 5};

  // Add elements to the set
  numbers.add(6);
  numbers.add(7);

  // Remove an element from the set
  numbers.remove(3);

  // Check if a specific element exists in the set
  int elementToCheck = 4;
  bool exists = numbers.contains(elementToCheck);
  print('Does the set contain $elementToCheck? $exists');

  // Print the final set
  print('Final set: $numbers');
}
