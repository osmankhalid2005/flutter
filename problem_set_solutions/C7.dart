/*
Question C7:
Write a flutter code, so that when the button is clicked, the text “hello world” should be shown in the Text() widget, and the button should be disabled.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isButtonDisabled = false;

  void _showHelloWorld() {
    setState(() {
      isButtonDisabled = true;
    });
    // Show a Snackbar with "Hello, world!"
 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isButtonDisabled ? 'Hello, world!' : '',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: isButtonDisabled ? null : _showHelloWorld,
              child: const Text('Click Here'),
            ),
          ],
        ),
      ),
    );
  }
}
