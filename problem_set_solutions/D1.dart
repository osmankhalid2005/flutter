/*
Write code to show the following list using flutter GridView widget
[ {name: ‘Ali’, age: 33, city: ‘Karachi’}, {name: ‘Faisal’, age: 20, city: ‘Lahore’}, {name:
‘Noman’, age: 53, city: ‘Karachi’},]
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Map<String, dynamic>> users = [
    {'name': 'Ali', 'age': 33, 'city': 'Karachi'},
    {'name': 'Faisal', 'age': 20, 'city': 'Lahore'},
    {'name': 'Noman', 'age': 53, 'city': 'Karachi'},
  ];

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(users.length, (index) {
            return Card(
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Name: ${users[index]['name']}',
                        style: const TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10.0),
                    Text('Age: ${users[index]['age']}',
                        style: const TextStyle(fontSize: 14.0)),
                    const SizedBox(height: 10.0),
                    Text('City: ${users[index]['city']}',
                        style: const TextStyle(fontSize: 14.0)),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
