import 'package:flutter/material.dart';
import 'dart:math'; // For random number generation

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
          title: const Text('Student Attendance'),
        ),
        body: const Center(
          child: Attendance(names: ['Ali Khan', 'Noman', 'Faisal', 'Javed']),
        ),
      ),
    );
  }
}

class Attendance extends StatelessWidget {
  final List<String> names;

  const Attendance({super.key, required this.names});

  String getRandomStatus() {
    final random = Random();
    return random.nextBool() ? 'Present' : 'Absent';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var name in names)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$name\t\t${getRandomStatus()}'),
          ),
      ],
    );
  }
}
