//list by age in ascending order and prints the sorted list.

void main() {
  var records = [
    (name: "Alice", age: 25),
    (name: "Bob", age: 30),
    (name: "Charlie", age: 22)
  ];

  records.sort((a, b) => a.age.compareTo(b.age));

  print(records);
}

