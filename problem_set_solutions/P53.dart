void calculateFinalPrice(Map<String, dynamic> product) {
  // Extract the price and discount using pattern matching
  double price = product['price'];
  double discount = product.containsKey('discount') ? product['discount'] : 0.0;

  // Calculate the final price
  double finalPrice = price - (price * discount / 100);

  // Print the final price
  if (discount > 0) {
    print(
        'The final price after a discount of $discount% is: \$${finalPrice.toStringAsFixed(2)}');
  } else {
    print('The original price is: \$${price.toStringAsFixed(2)}');
  }
}

void main() {
  // Test the function with different products
  Map<String, dynamic> product1 = {
    'name': 'Laptop',
    'price': 1000.0,
    'discount': 10.0
  };
  Map<String, dynamic> product2 = {'name': 'Smartphone', 'price': 800.0};

  calculateFinalPrice(
      product1); // The final price after a discount of 10.0% is: $900.00
  calculateFinalPrice(product2); // The original price is: $800.00
}
