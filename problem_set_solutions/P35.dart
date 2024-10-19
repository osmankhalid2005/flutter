void main() {
  // Define two maps with overlapping keys
  Map<int, String> map1 = {1: 'One', 2: 'Two', 3: 'Three'};
  Map<int, String> map2 = {2: 'Deux', 4: 'Four'};

  // Merge map2 into map1
  map1.addAll(map2);

  // Print the result
  print('Merged map with overlapping keys: $map1');
}
