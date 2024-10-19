void main() {
  // Create a list of product maps
  List<Map<String, dynamic>> products = [
    {'name': 'Laptop', 'price': 999.99, 'quantity': 10},
    {'name': 'Smartphone', 'price': 699.99, 'quantity': 20},
    {'name': 'Tablet', 'price': 399.99, 'quantity': 15},
    {'name': 'Smartwatch', 'price': 199.99, 'quantity': 30},
    {'name': 'Headphones', 'price': 149.99, 'quantity': 25},
  ];

  // Function to add a new product to the list
  void addProduct(String name, double price, int quantity) {
    products.add({'name': name, 'price': price, 'quantity': quantity});
  }

  // Function to find a product by its name
  Map<String, dynamic>? findProductByName(String name) {
    return products.firstWhere((product) => product['name'] == name,
        orElse: () => {});
  }

  // Function to sort products by price
  void sortProductsByPrice() {
    products.sort((a, b) => a['price'].compareTo(b['price']));
  }

  // Add a new product
  addProduct('Keyboard', 49.99, 50);

  // Find a product by its name
  String searchName = 'Smartphone';
  Map<String, dynamic>? foundProduct = findProductByName(searchName);
  if (foundProduct != null && foundProduct.isNotEmpty) {
    print('Product found: $foundProduct');
  } else {
    print('Product $searchName not found.');
  }

  // Sort products by price
  sortProductsByPrice();

  // Print the sorted list of products
  print('Products sorted by price:');
  for (var product in products) {
    print(
        'Name: ${product['name']}, Price: \$${product['price']}, Quantity: ${product['quantity']}');
  }
}
