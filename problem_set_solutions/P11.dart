void main() {
  // Defining a record type to hold name and age
  var person1 = ('Alice', 30);
  var person2 = ('Bob', 25);
  var person3 = ('Charlie', 35);

  // Accessing and printing the fields of the records
  print('Person 1: Name = ${person1.$1}, Age = ${person1.$2}');
  print('Person 2: Name = ${person2.$1}, Age = ${person2.$2}');
  print('Person 3: Name = ${person3.$1}, Age = ${person3.$2}');
}
