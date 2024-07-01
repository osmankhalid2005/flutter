/* 

Question C15:

Show a list of students, such that :

ID Name CGPA

1 Javed 3.0
2 Noman 2.7
3 Ali 3.7
4 Faisal 3.3
5 Shahid 4.0
6 Kamal 3.1
7 Zahid 2.3

The students whose CGPA are in the range between 2 and less than 3 should be shown in bold and 
red font.

The students whose CGPA are in the range between 3 and less than 3.7 should be shown in blue font 
without bold

The students whose CGPA are greater than and equal to 3.7 should be shown in italic, bold, and 
green font
*/

import 'package:flutter/material.dart';

class Student {
  final int id;
  final String name;
  final double gpa;

  Student(this.id, this.name, this.gpa);
}

void main() {
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Student> students = [
    Student(1, "Javed", 3.0),
    Student(2, "Noman", 2.7),
    Student(3, "Ali", 3.7),
    Student(4, "Faisal", 3.3),
    Student(5, "Shahid", 4.0),
    Student(6, "Kamal", 3.1),
    Student(7, "Zahid", 2.3)
  ];

  TextStyle? _getTextStyle(double gpa) {
    FontWeight fw = FontWeight.normal;
    FontStyle fs = FontStyle.normal;
    Color color = Colors.black;

    if (gpa >= 2 && gpa < 3) {
      color = Colors.red;
      fw = FontWeight.bold;
      fs = FontStyle.normal;
    } else if (gpa >= 3 && gpa < 3.7) {
      color = Colors.blue;
      fw = FontWeight.normal;
      fs = FontStyle.normal;
    } else if (gpa >= 3.7) {
      color = Colors.green;
      fw = FontWeight.normal;
      fs = FontStyle.italic;
    }

    return TextStyle(
      fontWeight: fw,
      fontStyle: fs,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(50),
            child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  final item = students[index];

                  return ListTile(
                      title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Text("${item.id}", style: _getTextStyle(item.gpa)),
                        Text(item.name, style: _getTextStyle(item.gpa)),
                        Text("${item.gpa}", style: _getTextStyle(item.gpa)),
                      ]));
                })));
  }
}
