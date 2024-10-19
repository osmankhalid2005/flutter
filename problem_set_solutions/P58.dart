import 'dart:io';

void main() {
  // Prompt the user to enter a traffic light signal
  print('Enter a traffic light signal (red, yellow, green):');
  String? signal = stdin.readLineSync()?.toLowerCase();

  // Use a switch statement to print the appropriate message
  switch (signal) {
    case 'red':
      print('Stop');
      break;
    case 'yellow':
      print('Slow down');
      break;
    case 'green':
      print('Go');
      break;
    default:
      print('Invalid signal');
  }
}
