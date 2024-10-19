List<int> combineLists(List<int>? list1, List<int>? list2) {
  return [...?list1, ...?list2];
}

void main() {
  // Test cases
  List<int>? list1 = [1, 2, 3];
  List<int>? list2 = [4, 5, 6];
  List<int>? list3 = null;
  List<int>? list4 = [7, 8, 9];

  // Combining different combinations of lists
  print('Combining list1 and list2: ${combineLists(list1, list2)}');
  print('Combining list1 and list3: ${combineLists(list1, list3)}');
  print('Combining list3 and list4: ${combineLists(list3, list4)}');
  print('Combining list3 and list3: ${combineLists(list3, list3)}');
  print('Combining list2 and list4: ${combineLists(list2, list4)}');
}
