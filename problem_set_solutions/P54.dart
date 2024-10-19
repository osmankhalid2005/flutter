void main() {
  // Given list of lists
  List<List<int>> nestedList = [
    [1, 2],
    [3, 4],
    [5, 6, 7]
  ];

  // Variable to track if a match is found
  bool matchFound = false;

  // Iterate over the nested list
  for (var innerList in nestedList) {
    if (innerList.length == 3) {
      print('Inner list with exactly 3 elements: $innerList');
      matchFound = true;
      break;
    }
  }

  // If no match is found, print "No match found"
  if (!matchFound) {
    print('No match found');
  }
}
