void main() {
  // Define the lists
  List<int> evens = [2, 4, 6];
  List<int> odds = [1, 3, 5];

  // Create a new list using the spread operator
  List<int> combinedList = [0, ...evens, ...odds, 7];

  // Print the result
  print('Combined list: $combinedList');
}
