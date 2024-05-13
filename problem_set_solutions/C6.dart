/*
Question C6:
Write a flutter program in which when a button is clicked, the text of first TextField() is assigned to second TextField()

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

      ElevatedButton(onPressed: () => setState(
        
        () { 
          message = userInput; 
         
          }
        
        
        
        ), child: Text("Press button")),

      
      TextField(
        controller: TextEditingController(text: message),        
        decoration: const InputDecoration(
          hintText: 'Enter your message'
        ),        
      ),
    ],
  );
}

}

