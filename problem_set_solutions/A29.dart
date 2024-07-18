import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainDrawer(),
    );
  }
}

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  int _selectedDrawer = 0;

  _getDrawerContent(int pos) {
    switch (pos) {
      case 0:
        return const Drawer1();
      case 1:
        return const Drawer2();
      default:
        return const Center(child: Text("Error"));
    }
  }

  _onSelectMainDrawer(int index) {
    setState(() {
      _selectedDrawer = index;
    });
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Drawer Navigation'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              child: Text(
                'Main Navigation Menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text('Drawer 1'),
              selected: _selectedDrawer == 0,
              onTap: () => _onSelectMainDrawer(0),
            ),
            ListTile(
              title: const Text('Drawer 2'),
              selected: _selectedDrawer == 1,
              onTap: () => _onSelectMainDrawer(1),
            ),
          ],
        ),
      ),
      body: _getDrawerContent(_selectedDrawer),
    );
  }
}

class Drawer1 extends StatefulWidget {
  const Drawer1({super.key});

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  int _selectedDrawerIndex = 0;

  _getDrawer1ItemWidget(int pos) {
    switch (pos) {
      case 0:
        return const Screen1();
      case 1:
        return const Screen2();
      default:
        return const Center(child: Text("Error"));
    }
  }

  _onSelectDrawer1Item(int index) {
    setState(() {
      _selectedDrawerIndex = index;
    });
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer 1'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              child: Text(
                'Drawer 1 Menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text('Screen 1'),
              selected: _selectedDrawerIndex == 0,
              onTap: () => _onSelectDrawer1Item(0),
            ),
            ListTile(
              title: const Text('Screen 2'),
              selected: _selectedDrawerIndex == 1,
              onTap: () => _onSelectDrawer1Item(1),
            ),
          ],
        ),
      ),
      body: _getDrawer1ItemWidget(_selectedDrawerIndex),
    );
  }
}

class Drawer2 extends StatefulWidget {
  const Drawer2({super.key});

  @override
  State<Drawer2> createState() => _Drawer2State();
}

class _Drawer2State extends State<Drawer2> {
  int _selectedDrawerIndex = 0;

  _getDrawer2ItemWidget(int pos) {
    switch (pos) {
      case 0:
        return const Screen3();
      case 1:
        return const Screen4();
      default:
        return const Center(child: Text("Error"));
    }
  }

  _onSelectDrawer2Item(int index) {
    setState(() {
      _selectedDrawerIndex = index;
    });
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer 2'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              child: Text(
                'Drawer 2 Menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text('Screen 3'),
              selected: _selectedDrawerIndex == 0,
              onTap: () => _onSelectDrawer2Item(0),
            ),
            ListTile(
              title: const Text('Screen 4'),
              selected: _selectedDrawerIndex == 1,
              onTap: () => _onSelectDrawer2Item(1),
            ),
          ],
        ),
      ),
      body: _getDrawer2ItemWidget(_selectedDrawerIndex),
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
