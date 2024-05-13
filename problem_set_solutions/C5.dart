/*
Question C5:
Write the code of TextFied() widget function.
When a user enters any text in the TextField(), it is also automatically written in another TextField() in capital letters.

*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: InputDisplay(),
      )
    )
  ));
}

class InputDisplay extends StatefulWidget {
  const InputDisplay({super.key});

  @override
  State<InputDisplay> createState() => _InputDisplayState();
}

class _InputDisplayState extends State<InputDisplay> {

String message = "";
String message1="";
String userInput="";



@override
Widget build(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      TextField(
        onChanged: (value) => setState(() => userInput = value
          ),
        decoration: const InputDecoration(
          hintText: 'Enter your message'
        ),        
      ),

      TextField(
        controller: TextEditingController(text: userInput.toUpperCase()),        
        decoration: const InputDecoration(
          hintText: 'Enter your message'
        ),        
      ),
    ],
  );
}

}

