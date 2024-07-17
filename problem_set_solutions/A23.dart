import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 178, 163, 203)),
      cardTheme: const CardTheme(color: Color.fromARGB(255, 255, 254, 250)),
      useMaterial3: true,
    ),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Category> cats = [
    Category('Laptops', 'https://via.placeholder.com/50'),
    Category('Work Stations', 'https://via.placeholder.com/50'),
    Category('Hard Drives', 'https://via.placeholder.com/50'),
    Category('Flash Drives', 'https://via.placeholder.com/50'),
    Category('Solid State Drives', 'https://via.placeholder.com/50'),
    Category('Keyboards', 'https://via.placeholder.com/50'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ListView.builder(
        itemCount: cats.length,
        itemBuilder: (context, index) {
          final cat = cats[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3, // Adjust the elevation value as needed
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading:
                      Image.network(cat.thumbnailUrl, width: 40, height: 40),
                  title: Text(cat.name),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Products(productCategory: cat.name),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Product product;

  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(product.name),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      product.thumbnailUrl,
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      product.name,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text("Price: ${product.price}"),
                    const SizedBox(height: 12),
                    Text(product.specs),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        backgroundColor: const Color.fromARGB(
                            255, 104, 185, 251), // Background color
                        foregroundColor: Colors.black, // Text color
                      ),
                      child: const Text("Add to Cart"),
                    )
                  ],
                ),
              ),
            )));
  }
}

class Category {
  final String name;
  final String thumbnailUrl;

  Category(this.name, this.thumbnailUrl);
}

class Product {
  final String name;
  final String thumbnailUrl;
  final double price;
  final String specs;

  Product(
      {required this.name,
      required this.thumbnailUrl,
      required this.price,
      required this.specs});
}

class Products extends StatelessWidget {
  final String productCategory;
  Products({super.key, required this.productCategory});

  final List<Product> products = [
    Product(
      name: 'HP Pavillion',
      thumbnailUrl: 'https://via.placeholder.com/50',
      price: 339.99,
      specs:
          "Core i9 Processor, 300 GB SSD, Intel Graphics Card, 15.1 inch screen size",
    ),
    Product(
      name: 'Dell Latitude',
      thumbnailUrl: 'https://via.placeholder.com/50',
      price: 319.99,
      specs:
          "Core i7 Processor, 200 GB SSD, Intel Graphics Card, 15.1 inch screen size",
    ),
    Product(
      name: 'Dell Inspiron',
      thumbnailUrl: 'https://via.placeholder.com/50',
      price: 4419.99,
      specs:
          "Core i6 Processor, 600 GB SSD, Intel Graphics Card, 15.1 inch screen size",
    ),
    Product(
      name: 'HP Notebook',
      thumbnailUrl: 'https://via.placeholder.com/50',
      price: 3249.99,
      specs:
          "Core i9 Processor, 300 GB SSD, Intel Graphics Card, 15.1 inch screen size",
    ),
    Product(
      name: 'Acer Max',
      thumbnailUrl: 'https://via.placeholder.com/50',
      price: 249.99,
      specs:
          "Core i9 Processor, 300 GB SSD, Intel Graphics Card, 15.1 inch screen size",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productCategory),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Padding around the grid
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns
            childAspectRatio: 0.6, // Aspect ratio of the grid items
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            final product = products[index];
            return GestureDetector(
              onTap: () {
                // Navigate to product detail page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(product: product),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 254, 255, 251),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.normal,
                          blurRadius: 3,
                          color: Colors.black)
                    ]),

                // Adjust width as needed
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      product.thumbnailUrl,
                      height: 90, // Adjust height as needed
                      // Make image fit the width of the card
                      //width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 8), // Space between image and text
                    Text(
                      product.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text('\$${product.price.toStringAsFixed(2)}'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
