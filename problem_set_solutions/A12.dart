import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  int random = 0;

  void updateTextBox(String action) {
    setState(() {
      if (action.compareTo("RANDOM") == 0) {
        random = Random().nextInt(100) + 1;
        _controller.text = random.toString();
      } else {
        if (int.tryParse(_controller.text) != null) {
          int temp = int.parse(_controller.text);
          temp = temp + 1;
          _controller.text = temp.toString();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('HOME SCREEN')),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 240,
            child: Padding(
              padding: const EdgeInsets.only(right: 0, left: 0),
              child: SizedBox(
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 10, right: 0),
                  child: ElevatedButton(
                    onPressed: () => updateTextBox("RANDOM"),
                    child: const Text('RANDOM'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 10, right: 0),
                  child: ElevatedButton(
                    onPressed: () => updateTextBox("COUNTER"),
                    child: const Text('COUNTER'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Map<String, dynamic> data = {"value": _controller.text};
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Display(),
                          settings: RouteSettings(arguments: data),
                        ),
                      );
                    },
                    child: const Text('SEND'),
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

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('DISPLAY SCREEN')),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.only(right: 50, left: 50),
              child: SizedBox(
                child: Text("The value is: ${args["value"]}"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
