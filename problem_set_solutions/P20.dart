void main() {
  // Create two lists of integers
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [4, 5, 6, 7, 8];

  // Merge the lists
  List<int> mergedList = [...list1, ...list2];

  // Remove duplicates by converting to a set and back to a list
  List<int> uniqueList = mergedList.toSet().toList();

  // Print the final list
  print('Merged list without duplicates: $uniqueList');
}
