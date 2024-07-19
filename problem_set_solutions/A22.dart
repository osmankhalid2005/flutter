import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  final TextEditingController _num = TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('HOME')),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 400,
            child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: SizedBox(
                child: TextField(
                  controller: _num,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 80, right: 80),
            child: ElevatedButton(
              onPressed: () {
                Map<String, dynamic> data = {
                  "num": _num.text,
                };

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DisplayScreen(),
                    settings: RouteSettings(arguments: data),
                  ),
                );
              },
              child: const Text('SUBMIT'),
            ),
          ),
        ],
      ),
    );
  }
}

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    int num = 0;
    String result = "";

    if (int.tryParse(args["num"]) != null) {
      num = int.parse(args["num"]);

      if (num == 1) {
        result = "Received number is one";
      } else if (num == 2) {
        result = "Received number is two";
      } else if (num == 3) {
        result = "Received number is three";
      } else {
        result = "Invalid number";
      }
    } else {
      result = "Invalid number";
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('DISPLAY')),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.all(
                          10), // Adjust the padding value as needed
                      child: Text(result),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
