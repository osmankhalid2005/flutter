void main() {
  // Initial items in the shopping cart
  List<String> shoppingCart = ['Apples', 'Bananas', 'Oranges'];

  // Boolean variable to indicate if discount is applied
  bool discountApplied = true; // Change to false to test the other condition

  // Use collection if to conditionally add "Coupon Discount"
  List<String> finalCart = [
    ...shoppingCart,
    if (discountApplied) 'Coupon Discount'
  ];

  // Print the final list
  print('Final shopping cart: $finalCart');
}
