/*
Question A15:
Suppose you have the following array,

List<Map<String, String>> myArray = [
  {'name': 'ali', 'age': '45'},
  {'name': 'noman', 'age': '34'},
];

Display the key and value of array elements using for and forEach.
*/


void main() {

  List<Map<String, String>> myArray = [
  {'name': 'ali', 'age': '45'},
  {'name': 'noman', 'age': '34'},
];

print("// Using for loop");
  for (var mapObject in myArray) {
    // Access elements using key
    print('Name: ${mapObject['name']}');
    print('Age: ${mapObject['age']}');
    print(''); // Add an empty line for better readability
  }

print("// Using forEach() function");
myArray.forEach( (mapObject) => print("Name: ${mapObject['name']}  Age: ${mapObject['age']}"));

}
