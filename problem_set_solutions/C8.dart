/*
Question C8:
Create a simple registration page in Flutter asking for user’s email and name. When the user clicks on register button, the information should be shown using Text widgets. If any input is missing, snackbar message should be shown about the missing element. Use TextEditingController() class to get values of TextField().

*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Controllers to store text from each box
  final TextEditingController _textController1 = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  String _displayText = ""; // Variable to store combined text

  void _onPressed() {
    // Combine text from controllers and update display text
    setState(() {
      _displayText = "${_textController1.text} - ${_textController2.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Registration Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                controller: _textController1,
                decoration: const InputDecoration(
                  hintText: 'Enter Email',
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _textController2,
                decoration: const InputDecoration(
                  hintText: 'Enter Name',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _onPressed,
                child: const Text('Register'),
              ),
              const SizedBox(height: 10),
              Text(_displayText),
            ],
          ),
        ),
      ),
    );
  }
}

