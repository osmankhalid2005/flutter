void main() {
  // Create a map with student names as keys and their grades as values
  Map<String, String> studentGrades = {
    'Alice': 'A',
    'Bob': 'B',
    'Charlie': 'C'
  };

  // Add a new key-value pair
  studentGrades['David'] = 'B+';

  // Update the grade of an existing student
  studentGrades['Alice'] = 'A+';

  // Remove a student from the map
  studentGrades.remove('Charlie');

  // Print all students and their grades
  studentGrades.forEach((student, grade) {
    print('$student: $grade');
  });
}
