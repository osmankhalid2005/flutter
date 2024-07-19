import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  final TextEditingController _city = TextEditingController(text: "Abbottabad");
  final TextEditingController _country =
      TextEditingController(text: "Pakistan");

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
                  controller: _city,
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
          SizedBox(
            width: 400,
            child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: SizedBox(
                child: TextField(
                  controller: _country,
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
                  "city": _city.text,
                  "country": _country.text
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
                      child: Text("${args["city"]}, ${args["country"]}"),
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
