void main() {
  // Creating a list of integers
  var numbers = [10, 20, 30, 40, 50];

  // Adding an element to the list
  numbers.add(60);
  print('After adding 60: $numbers');

  // Removing an element from the list
  numbers.remove(30);
  print('After removing 30: $numbers');

  // Updating an element at a specific index
  numbers[2] = 100; // Updating the element at index 2
  print('After updating index 2 to 100: $numbers');

  // Printing the final list
  print('Final list: $numbers');
}
