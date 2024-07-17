/*
Question A7:

Write code that launches a screen Display from Home screen. Send two numbers from Home to Display, where they should be shown separately in TextField widgets.

*/

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(title: 'Passing Data', home: HomeScreen()),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Map<String, dynamic> data = {"num1": 10, "num2": 20};

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DataReceiver(),
                    settings: RouteSettings(arguments: data),
                  ),
                );
              },
              child: const Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}

class DataReceiver extends StatelessWidget {
  const DataReceiver({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Received Data'),
      ),
      body: Center(
        child: Text(
          "Number 1: ${args['num1']}\nNumber 2: ${args['num2']}",
          style: const TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
