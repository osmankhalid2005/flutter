import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: InputScreen()));
}

class InputScreen extends StatefulWidget {
  InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name"),
            TextField(controller: namecontroller),
            SizedBox(
              height: 20,
            ),
            Text("Age"),
            TextField(controller: agecontroller),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayScreen(
                              name: namecontroller.text,
                              age: int.tryParse(agecontroller.text))));
                },
                child: Text("Search"))
          ],
        ),
      )),
    );
  }
}

class DisplayScreen extends StatefulWidget {
  String name;
  int? age;
  DisplayScreen({super.key, required this.name, required this.age});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  String? txtname;
  int? txtid;
  int? txtage;
  bool found = false;
  int index = 0;

  List<Map<dynamic, dynamic>> names = [
    {"id": 10, "name": "Ali", "age": 40},
    {"id": 20, "name": "Noman", "age": 50},
    {"id": 30, "name": "Faisal", "age": 50},
  ];

  @override
  Widget build(BuildContext context) {
    names
        .where(
            (item) => item["name"] == widget.name && item["age"] == widget.age)
        .forEach((item) {
      txtid = item["id"];
      txtname = item["name"];
      txtage = item["age"];
      found = true;
    });

    return Scaffold(
        appBar: AppBar(
          title: Text("Display Screen"),
        ),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.all(20),
                child: found
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(txtid.toString()),
                            Text(txtname.toString()),
                            Text(txtage.toString()),
                            
                          ])
                    : Text("Record not found"))));
  }
}
