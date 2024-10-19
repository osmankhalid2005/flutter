void main() {
  // Define the two maps
  Map<String, String> map1 = {'name': 'Alice', 'age': '25'};
  Map<String, String> map2 = {'city': 'New York', 'country': 'USA'};

  // Combine the maps using the spread operator
  Map<String, String> combinedMap = {...map1, ...map2};

  // Print the result
  print('Combined map: $combinedMap');
}
