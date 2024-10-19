void main() {
  // Initial set of favorite colors
  Set<String> favoriteColors = {'Blue', 'Green', 'Red'};

  // Boolean variable to indicate if 'Purple' is liked
  bool likesPurple = true; // Change to false to test the other condition

  // Use collection if to conditionally add 'Purple'
  Set<String> finalColors = {...favoriteColors, if (likesPurple) 'Purple'};

  // Print the final set of favorite colors
  print('Final set of favorite colors: $finalColors');
}
