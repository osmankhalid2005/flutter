void printPersonInfo(List<dynamic> person) {
  // Destructure the tuple using pattern matching
  var [name, age] = person;

  // Print the message
  print('$name is $age years old');
}

void main() {
  // Test the function with different tuples
  printPersonInfo(['John', 25]); // John is 25 years old
  printPersonInfo(['Alice', 30]); // Alice is 30 years old
  printPersonInfo(['Bob', 22]); // Bob is 22 years old
}
