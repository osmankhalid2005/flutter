List<int> flattenList(List<List<int>> nestedList) {
  // Use the spread operator to flatten the nested list
  return [for (var sublist in nestedList) ...sublist];
}

void main() {
  // Example nested list
  List<List<int>> nestedList = [
    [1, 2],
    [3, 4],
    [5, 6]
  ];

  // Flatten the nested list
  List<int> flatList = flattenList(nestedList);

  // Print the result
  print('Flattened list: $flatList');
}
