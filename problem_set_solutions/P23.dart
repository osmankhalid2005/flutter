void main() {
  // Create two sets of integers
  Set<int> set1 = {1, 2, 3, 4, 5};
  Set<int> set2 = {4, 5, 6, 7, 8};

  // Find the intersection of both sets
  Set<int> intersectionSet = set1.intersection(set2);

  // Print the result
  print('Intersection of both sets: $intersectionSet');
}
