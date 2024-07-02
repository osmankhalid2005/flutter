/* 

Question C33:

We have following record of students:

RegNo Name  Marks

1 Ali 80

2 Noman 60

3 Faisal  40

4 Javed 55



You need to show the above record map function flutter’s ListView widget. Display a 4th column in the output that displays ‘pass’ if marks are greater than 50 and fail otherwise.

For example:

RegNo Name  Marks Status

1 Ali 80  Pass

2 Noman 60  Pass

3 Faisal  40  Fail

4 Javed 55  Pass

*/

import 'package:flutter/material.dart';

class Student {
  final int regno;

  final String name;

  final double marks;

  Student(this.regno, this.name, this.marks);
}

void main() {
  runApp(MaterialApp(title: 'Flutter Demo', home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Student> students = [
    Student(35, "Ali", 33),
    Student(15, "Nasir", 63),
    Student(20, "Javed", 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(20),
            child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  final item = students[index];

                  return ListTile(
                      subtitle: Row(children: [
                    Expanded(child: Text("${item.regno}")),
                    Expanded(child: Text(item.name)),
                    Expanded(child: Text("${item.marks}")),
                    Expanded(child: Text(item.marks >= 50 ? "Pass" : "Fail")),
                  ]));
                })));
  }
}
