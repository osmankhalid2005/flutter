import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fruit App'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FruitCard(imagePath: 'assets/images/banana.jfif', fruitName: 'Banana'),
              SizedBox(height: 20),
              FruitCard(imagePath: 'assets/images/orange.jfif', fruitName: 'Orange'),
            ],
          ),
        ),
      ),
    );
  }
}

class FruitCard extends StatelessWidget {
  final String imagePath;
  final String fruitName;

  const FruitCard({super.key, required this.imagePath, required this.fruitName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 100, height: 100),
          const SizedBox(height: 10),
          Text(
            fruitName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
