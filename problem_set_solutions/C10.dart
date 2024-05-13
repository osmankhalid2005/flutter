/*
The following layout has three number buttons, a plus and equal operator, and a TextField() initialized with a zero “0”. 
The user should be able to enter an expression like this: 423+35+223. When the user press the equal button, the answer should be shown in the TextField().
*/

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: const MyApp()
      ),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Controllers to store text from each box
  final TextEditingController _mainscreen = TextEditingController(); 
  String mainscreentext = ""; 
  String previous="";

void callAlert(String msg) {

      AlertDialog alert =  AlertDialog(
      title:  const Text("Invalid Button Press"),
      content:  Text(msg),
      actions: [
        TextButton(
                  onPressed: () {
                  Navigator.pop(context);
                  },
                   child: const Text('OK'),
                  ),
],
    );

    // Show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );

  }

  void _onPressed(String btntext) {

    setState(() {
    if(btntext.compareTo("Clear")==0) {
        _mainscreen.text = "";
     }
    else if(btntext.compareTo('=') == 0 ) 
    {
      if(previous.compareTo("+")==0) 
      {
        callAlert("Invalid expression");
        _mainscreen.text = "";
        return;
      }

var tokens =_mainscreen.text.split('+');

int sum=0;
for(var item in tokens) {
sum = sum + int.parse(item);
}
_mainscreen.text = "$sum";
}
// if the current button (btntext) pressed is same to the previous button
// and the previous button pressed was plus +
else if( (previous.compareTo(btntext) == 0 && previous.compareTo("+") == 0) ) {
      callAlert("Cannot press an '+' here");
      }
      else {
        previous = btntext;
      _mainscreen.text = "${_mainscreen.text}$btntext";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
              TextField(
                controller: _mainscreen,
                decoration: const InputDecoration(
                  hintText: '0',
                ),
              ),
              const SizedBox(height: 10),             
              Row(
                children: [
                   ElevatedButton(
                onPressed: ()=>_onPressed("1"),
                child: const Text('1'),
              ),
              const SizedBox(width: 10),
               ElevatedButton(
                   onPressed: ()=>_onPressed("2"),
                child: const Text('2'),
              ),
              const SizedBox(width: 10),
               ElevatedButton(
                   onPressed: ()=>_onPressed("3"),
                child: const Text('3'),
              ),
              const SizedBox(width: 10),
               ElevatedButton(
                   onPressed: ()=>_onPressed("+"),
                child: const Text('+'),
              ),
              const SizedBox(width: 10),
               ElevatedButton(
                   onPressed: ()=>_onPressed("="),
                child: const Text('='),
              ),
              const SizedBox(width: 10),
              
                ],
              ),
              ElevatedButton(
                   onPressed: ()=>_onPressed("Clear"),
                child: const Text('Clear'),
              ),              
            ]     
    );
  }
}
