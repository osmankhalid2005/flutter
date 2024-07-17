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
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('HOME SCREEN')),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text('E-mail'),
                ),
              ),
              SizedBox(
                width: 240,
                child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: SizedBox(
                    child: TextField(
                      controller: _email,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 10.0),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text('Person Name'),
                ),
              ),
              SizedBox(
                width: 240,
                child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: SizedBox(
                    child: TextField(
                      controller: _name,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 10.0),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 80, right: 80),
                  child: ElevatedButton(
                    onPressed: () {
                      Map<String, dynamic> data = {
                        "email": _email.text,
                        "name": _name.text
                      };

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                          settings: RouteSettings(arguments: data),
                        ),
                      );
                    },
                    child: const Text('SUBMIT'),
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

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('PROFILE SCREEN')),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text('E-mail'),
                ),
              ),
              SizedBox(
                width: 240,
                child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: SizedBox(
                    child: Text(args["email"],
                        style: const TextStyle(fontStyle: FontStyle.italic)),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text('Person Name'),
                ),
              ),
              SizedBox(
                width: 240,
                child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: SizedBox(
                    child: Text(args["name"],
                        style: const TextStyle(fontStyle: FontStyle.italic)),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
