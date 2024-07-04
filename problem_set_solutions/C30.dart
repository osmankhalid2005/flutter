import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Random Increment Example')),
        body: RandomIncrementer(),
      ),
    );
  }
}

class RandomIncrementer extends StatefulWidget {
  @override
  _RandomIncrementerState createState() => _RandomIncrementerState();
}

class _RandomIncrementerState extends State<RandomIncrementer> {
  int valueA = 0;
  int valueB = 0;
  int valueC = 0;

  int target = 10;

  bool isRunning = true;

  void _incrementValue() {
    if (!isRunning) return;

    int randomNumber = Random().nextInt(9) + 1;

    setState(() {
      if (randomNumber >= 1 && randomNumber <= 3) {
        valueA++;
      } else if (randomNumber >= 4 && randomNumber <= 6) {
        valueB++;
      } else if (randomNumber >= 7 && randomNumber <= 9) {
        valueC++;
      }

      if (valueA > target || valueB > target || valueC > target) {
        isRunning = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text("A"),
                Text('$valueA', style: TextStyle(fontSize: 24.0)),
                Text("Range"),
                Text("1 to 3")
              ],
            ),
            Column(children: [
              Text("B"),
              Text('$valueB', style: TextStyle(fontSize: 24.0)),
              Text("Range"),
              Text("4 to 6")
            ]),
            Column(
              children: [
                Text("C"),
                Text('$valueC', style: TextStyle(fontSize: 24.0)),
                Text("Range"),
                Text("7 to 9")
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: isRunning == true ? _incrementValue : null,
              child: Text('Click Here'),
            ),
          ],
        )
      ]),
    );
  }
}
