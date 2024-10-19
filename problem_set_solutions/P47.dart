void determineGrade(int score) {
  if (score >= 90) {
    print('Grade A');
  } else if (score >= 80) {
    print('Grade B');
  } else if (score >= 70) {
    print('Grade C');
  } else if (score >= 60) {
    print('Grade D');
  } else {
    print('Grade F');
  }
}

void main() {
  // Test the function with different scores
  determineGrade(95); // Grade A
  determineGrade(85); // Grade B
  determineGrade(75); // Grade C
  determineGrade(65); // Grade D
  determineGrade(55); // Grade F
}
