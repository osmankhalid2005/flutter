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
          title: const Text('Grade Calculator'),
        ),
        body: const Center(
          child: GradeCalculator(marks: 65), // Example: Pass the marks here
        ),
      ),
    );
  }
}

class GradeCalculator extends StatelessWidget {
  final int marks;

  const GradeCalculator({required this.marks, super.key});

  String calculateGrade() {
    if (marks < 50) {
      return 'F';
    } else if (marks >= 50 && marks < 60) {
      return 'E';
    } else if (marks >= 60 && marks < 70) {
      return 'D';
    } else if (marks >= 70 && marks < 80) {
      return 'C';
    } else if (marks >= 80 && marks < 90) {
      return 'B';
    } else {
      return 'A';
    }
  }

  @override
  Widget build(BuildContext context) {
    final grade = calculateGrade();

    return Text(
      'Grade: $grade',
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
