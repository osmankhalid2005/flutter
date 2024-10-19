void main() {
  // Create two sets of integers
  Set<int> set1 = {1, 2, 3, 4, 5};
  Set<int> set2 = {4, 5, 6, 7, 8};

  // Find the difference between the two sets
  Set<int> differenceSet = set1.difference(set2);

  // Print the result
  print('Difference between set1 and set2: $differenceSet');
}
