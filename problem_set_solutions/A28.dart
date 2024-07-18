import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return const Screen1();
      case 1:
        return const Screen2();
      case 2:
        return const Screen3();
      case 3:
        return const Screen4();
      default:
        return const Center(child: Text("Error"));
    }
  }

  _onSelectItem(int index) {
    setState(() {
      _selectedDrawerIndex = index;
    });
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Navigation'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              child: Text(
                'Navigation Menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text('Screen 1'),
              selected: _selectedDrawerIndex == 0,
              onTap: () => _onSelectItem(0),
            ),
            ListTile(
              title: const Text('Screen 2'),
              selected: _selectedDrawerIndex == 1,
              onTap: () => _onSelectItem(1),
            ),
            ListTile(
              title: const Text('Screen 3'),
              selected: _selectedDrawerIndex == 2,
              onTap: () => _onSelectItem(2),
            ),
            ListTile(
              title: const Text('Screen 4'),
              selected: _selectedDrawerIndex == 3,
              onTap: () => _onSelectItem(3),
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 1'),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 2'),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 3'),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 4'),
    );
  }
}
