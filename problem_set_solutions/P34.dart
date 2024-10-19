Map<String, int> countWordOccurrences(List<String> words) {
  // Create an empty map to store word counts
  Map<String, int> wordCounts = {};

  // Iterate over each word in the list
  for (String word in words) {
    // If the word is already in the map, increment its count
    if (wordCounts.containsKey(word)) {
      wordCounts[word] = wordCounts[word]! + 1;
    } else {
      // If the word is not in the map, add it with a count of 1
      wordCounts[word] = 1;
    }
  }

  return wordCounts;
}

void main() {
  // Test the function with the provided list
  List<String> words = [
    'apple',
    'banana',
    'apple',
    'orange',
    'banana',
    'apple'
  ];
  Map<String, int> wordCounts = countWordOccurrences(words);

  // Print the result
  print(wordCounts);
}
