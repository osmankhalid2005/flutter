/* 
Question C35:

Write code to show the following list using flutter <ListView> widget
[ {name: 'Ali', age: 33, city: 'Karachi'}, {name: 'Faisal', age: 20, city: 'Lahore'}, {name: 
'Noman', age: 53, city: 'Karachi'},]
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Flutter Demo', home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Map<String, dynamic>> students = [
    {"name": "Ali", "age": "33", "city": "Karachi"},
    {"name": "Faisal", "age": "20", "city": "Lahore"},
    {"name": "Noman", "age": "53", "city": "Islamabad" },
    {"name": "Khan", "age": "43", "city": "Faisalabad"},
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
                        Expanded(child: Text(item["name"])),
                        Expanded(child: Text(item["age"])),
                        Expanded(child: Text(item["city"])),
                      ]));
                })));
  }
}
