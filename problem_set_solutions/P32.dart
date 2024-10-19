void main() {
  // Create a map of students' names and their grades
  Map<String, String> studentGrades = {
    'Alice': 'A',
    'Bob': 'B',
    'Charlie': 'C',
    'David': 'B+',
    'Eve': 'A-'
  };

  // Function to print each student's name along with their grade
  void printStudentGrades(Map<String, String> grades) {
    grades.forEach((name, grade) {
      print('$name: $grade');
    });
  }

  // Call the function to print the student grades
  printStudentGrades(studentGrades);
}
