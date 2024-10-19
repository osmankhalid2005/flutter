void main() {
  // Create two sets of integers
  Set<int> set1 = {1, 2, 3, 4, 5};
  Set<int> set2 = {4, 5, 6, 7, 8};

  // Find the union of both sets
  Set<int> unionSet = set1.union(set2);

  // Print the result
  print('Union of both sets: $unionSet');
}
