void printWeekday(int day) {
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day');
  }
}

void main() {
  // Test the function with different inputs
  printWeekday(1);  // Monday
  printWeekday(4);  // Thursday
  printWeekday(7);  // Sunday
  printWeekday(0);  // Invalid day
  printWeekday(8);  // Invalid day
}
