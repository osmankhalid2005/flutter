class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void printAgeGroup(Person person) {
  switch (person.age) {
    case var age when age < 18:
      print('${person.name} is a Minor');
      break;
    case var age when age >= 18 && age <= 60:
      print('${person.name} is an Adult');
      break;
    case var age when age > 60:
      print('${person.name} is a Senior');
      break;
    default:
      print('Invalid age');
  }
}

void main() {
  // Test the function with different Person objects
  Person person1 = Person('Alice', 17);
  Person person2 = Person('Bob', 25);
  Person person3 = Person('Charlie', 65);

  printAgeGroup(person1); // Alice is a Minor
  printAgeGroup(person2); // Bob is an Adult
  printAgeGroup(person3); // Charlie is a Senior
}
