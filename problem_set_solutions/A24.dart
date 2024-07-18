import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TabBarDemo()));
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.directions_boat)),
            ],
          ),
          title: const Text('Tabs Demo'),
        ),
        body: const TabBarView(
          children: [
            MyScreen(item: "Car"),
            MyScreen(item: "Bus"),
            MyScreen(item: "Cycle"),
            MyScreen(item: "Boat")
          ],
        ),
      ),
    );
  }
}

class MyScreen extends StatelessWidget {
  final String item;
  const MyScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Text(item);
  }
}
