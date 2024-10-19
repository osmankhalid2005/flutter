void main() {
  // Defining a record type to hold name, age, and grade
  var student1 = ('Alice', 20, 85.5);
  var student2 = ('Bob', 22, 90.0);
  var student3 = ('Charlie', 19, 78.0);
  var student4 = ('Diana', 21, 92.5);
  var student5 = ('Eve', 20, 88.0);

  // Creating a list of student records
  var students = [student1, student2, student3, student4, student5];

  // Looping through the list and printing each student's details
  for (var student in students) {
    print('Name: ${student.$1}, Age: ${student.$2}, Grade: ${student.$3}');
  }
}
