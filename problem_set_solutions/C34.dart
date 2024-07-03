/* 

Question C34:

You have a layout as given in the following.
 

You need to write a “single method” for all the three buttons. The prototype of method is: 

function button_Click(String). 

In this method, you need to get the text of the button clicked. If the text is matching with the string “ISLAMABAD”, the <Text> should be assigned value ISLAMABAD, otherwise it remains blank.

*/

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Flutter Demo', home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String cityInfo = "";

  void button_click(String city) {
    debugPrint("CITY $city");

    setState(() {
      cityInfo = city == "ISLAMABAD" ? "ISLAMABAD" : "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("The capital of Pakistan is ${cityInfo}"),
        Row(children: [
          ElevatedButton(
              onPressed: () => button_click("KARACHI"), child: Text("KARACHI")),
          ElevatedButton(
              onPressed: () => button_click("LAHORE"), child: Text("LAHORE")),
          ElevatedButton(
              onPressed: () => button_click("ISLAMABAD"),
              child: Text("ISLAMABAD")),
        ])
      ],
    ));
  }
}
