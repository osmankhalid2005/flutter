void main() {
  // Create a map of products and their prices
  Map<String, double> productPrices = {
    'Laptop': 999.99,
    'Smartphone': 699.99,
    'Tablet': 399.99,
    'Smartwatch': 199.99,
    'Headphones': 149.99
  };

  // Extract the entries and sort them by prices (values)
  var sortedEntries = productPrices.entries.toList()
    ..sort((a, b) => a.value.compareTo(b.value));

  // Print the sorted entries
  print('Products sorted by price:');
  for (var entry in sortedEntries) {
    print('${entry.key}: \$${entry.value}');
  }
}
