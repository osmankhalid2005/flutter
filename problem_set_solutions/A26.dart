import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BannerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BannerScreen extends StatefulWidget {
  const BannerScreen({super.key});

  @override
  _BannerScreenState createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
  bool _isSignedIn = false;

  void _toggleSignIn() {
    setState(() {
      _isSignedIn = !_isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.teal,
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 15.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            ElevatedButton(
              onPressed: () {
                // Perform search action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
              ),
              child: const Text('Search'),
            ),
            const SizedBox(width: 10.0),
            ElevatedButton(
              onPressed: _toggleSignIn,
              style: ElevatedButton.styleFrom(
                backgroundColor: _isSignedIn ? Colors.red : Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
              ),
              child: Text(_isSignedIn ? 'Sign Out' : 'Sign In'),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Content goes here'),
      ),
    );
  }
}
