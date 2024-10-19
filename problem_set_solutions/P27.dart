void main() {
  // Create a map of student names and grades
  Map<String, String> studentGrades = {
    'Alice': 'A',
    'Bob': 'B',
    'Charlie': 'C'
  };

  // Student name to search for
  String searchName = 'Bob';

  // Check if the student exists in the map
  if (studentGrades.containsKey(searchName)) {
    print('$searchName\'s grade: ${studentGrades[searchName]}');
  } else {
    print('Student $searchName was not found.');
  }
}
