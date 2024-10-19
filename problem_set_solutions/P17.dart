void main() {
  // Create a list of string elements
  List<String> elements = ['apple', 'banana', 'cherry', 'date', 'elderberry'];

  // Element to search for
  String searchElement = 'cherry';

  // Find the index of the element
  int index = elements.indexOf(searchElement);

  // Check if the element is found
  if (index != -1) {
    print('Element found at index: $index');
  } else {
    print('Element not found');
  }
}
