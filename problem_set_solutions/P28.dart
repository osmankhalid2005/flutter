void main() {
  // Create a map of cities and their populations
  Map<String, int> cityPopulations = {
    'Tokyo': 37435191,
    'Delhi': 29399141,
    'Shanghai': 26317104,
    'São Paulo': 21846507,
    'Mumbai': 20411000
  };

  // Extract the entries and sort them by city names (keys)
  var sortedEntries = cityPopulations.entries.toList()
    ..sort((a, b) => a.key.compareTo(b.key));

  // Convert the sorted entries back into a map
  Map<String, int> sortedCityPopulations = {
    for (var entry in sortedEntries) entry.key: entry.value
  };

  // Print the sorted map
  print('Sorted city populations: $sortedCityPopulations');
}
