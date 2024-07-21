/*
Question A15:
Suppose you have the following array,

List<Map<String, String>> myArray = [
  {'name': 'ali', 'age': '45'},
  {'name': 'noman', 'age': '34'},
];


Display the key and value of array elements.
Display the values of the array

*/

void main() {
  List<Map<String, String>> myArray = [
    {'name': 'ali', 'age': '45'},
    {'name': 'noman', 'age': '34'},
  ];

  // To display the key and values:
  print("\n\n Printing key and values");
  for (var map in myArray) {
    map.forEach((key, value) {
      print('$key: $value');
    });
  }

  print("\n\n Using for loop");
  for (var mapObject in myArray) {
    // Access elements using key
    print('Name: ${mapObject['name']}');
    print('Age: ${mapObject['age']}');
    print(''); // Add an empty line for better readability
  }
}
