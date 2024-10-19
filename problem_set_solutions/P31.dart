void main() {
  // Create a map of country names and their capitals
  Map<String, String> countryCapitals = {
    'Germany': 'Berlin',
    'France': 'Paris',
    'Italy': 'Rome',
    'Japan': 'Tokyo',
    'Canada': 'Ottawa'
  };

  // Access and print the capital of "Germany"
  String germanyCapital = countryCapitals['Germany'] ?? 'Not found';
  print('The capital of Germany is: $germanyCapital');

  // Check if the map contains the key "India"
  bool containsIndia = countryCapitals.containsKey('India');
  print('Does the map contain the key "India"? $containsIndia');
}
