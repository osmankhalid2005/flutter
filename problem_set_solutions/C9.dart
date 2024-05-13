/* 
Question C9:
Suppose you have two TextField(), each containing a number, and a button to add the values of the two TextField(). When the button is clicked, the values of the TextField() are added and result should be shown in a Text() widget.

*/

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    ),
  );
}

class Counter extends StatefulWidget {

  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  final TextEditingController _counter1 = TextEditingController(text: "100");
  final TextEditingController _counter2 = TextEditingController(text: "200");
  
  int _sum = 0;

  

  void _sumcounter() {
    setState(() {   
      int c1=0;
      int c2=0;

      if( int.tryParse(_counter1.text) != null ) {
        c1 = int.parse(_counter1.text);
      }

      if( int.tryParse(_counter2.text) != null ) {
        c2 = int.parse(_counter2.text);
      }
      _sum = c1 + c2;
    });

  }

  @override
  Widget build(BuildContext context) {
  return Column( // Use Column for vertical layout
    mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
    children: <Widget>[
      
          TextField(
            controller: _counter1,        
          ) ,// Spacing between elements
          TextField(
            controller: _counter2,        
          ),
          ElevatedButton(
            onPressed: _sumcounter,
            child: const Text('Sum'),
          ),
          Text("$_sum")
        ],   

  );
}
}

