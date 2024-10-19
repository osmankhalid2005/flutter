void main() {
  // Define the product prices
  Map<String, double> productPrices = {
    'Laptop': 1000.0,
    'Smartphone': 800.0,
    'Tablet': 500.0
  };

  // Boolean variable to indicate if discount is applied
  bool applyDiscount = true; // Change to false to test the other condition

  // Calculate the total price
  double totalPrice = productPrices.values.reduce((a, b) => a + b);

  // Use collection if to conditionally add "Discount"
  Map<String, double> finalPrices = {
    ...productPrices,
    if (applyDiscount) 'Discount': totalPrice * 0.10
  };

  // Print the final map
  print('Final prices: $finalPrices');
}
