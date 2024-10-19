void main() {
  // Defining a record type to hold product name and price
  var product1 = ('Laptop', 1000.0);
  var product2 = ('Smartphone', 500.0);
  var product3 = ('Tablet', 300.0);
  var product4 = ('Headphones', 100.0);
  var product5 = ('Smartwatch', 200.0);

  // Creating a list of product records
  var products = [product1, product2, product3, product4, product5];

  // Updating the price of each product by 10%
  var updatedProducts = products.map((product) {
    var updatedPrice = product.$2 * 1.10;
    return (product.$1, updatedPrice);
  }).toList();

  // Printing the updated list of products
  for (var product in updatedProducts) {
    print('Product: ${product.$1}, Price: \$${product.$2.toStringAsFixed(2)}');
  }
}
