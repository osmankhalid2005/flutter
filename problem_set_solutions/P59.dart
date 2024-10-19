void determineSeason(String month) {
  switch (month.toLowerCase()) {
    case 'december':
    case 'january':
    case 'february':
      print('Winter');
      break;
    case 'march':
    case 'april':
    case 'may':
      print('Spring');
      break;
    case 'june':
    case 'july':
    case 'august':
      print('Summer');
      break;
    case 'september':
    case 'october':
    case 'november':
      print('Autumn');
      break;
    default:
      print('Invalid month');
  }
}

void main() {
  // Test the function with different month names
  determineSeason('January'); // Winter
  determineSeason('April'); // Spring
  determineSeason('July'); // Summer
  determineSeason('October'); // Autumn
  determineSeason('Invalid'); // Invalid month
}
