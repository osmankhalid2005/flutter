import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp( 
    home: Scaffold(
     
      appBar: AppBar(
          title: const Text('Button Example'),
        ),
      body: const MyApp(),      

      )
      )
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
          child: ElevatedButton(
            onPressed: () {
              // Show a Snackbar when the button is clicked
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Hello, world!'),
                  backgroundColor: Colors.blue,
                ),
              );
            },
            child: const Text('Click Here'),
          ),
    );
  }
}
