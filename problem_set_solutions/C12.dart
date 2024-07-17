import 'package:flutter/material.dart';

void main() {
  runApp(const StanfordApp());
}

class StanfordApp extends StatelessWidget {
  const StanfordApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StanfordHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StanfordHomePage extends StatelessWidget {
  const StanfordHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stanford University',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 109, 1, 1),
        actions: [
          TextButton(
            onPressed: () {},
            child: TextButton(
              onPressed: () {},
              child: const Text('CSID Login',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const BannerText(),
          const MenuAndSearchBar(),
          const SliderScreen(),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SectionHeading(heading: "News"),
                    const SizedBox(height: 20),
                    _buildNewsSection(),
                    const SizedBox(height: 16),
                    const SectionHeading(heading: "Events"),
                    const SizedBox(height: 16),
                    _buildEventsSection(),
                  ])),
          Container(
            height: 20,
            color: const Color.fromARGB(255, 233, 236, 221),
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    _buildContactInfoSection(),
                  ])),
          Container(
            height: 40,
            color: Colors.red[900]!,
          ),
          Container(
              height: 15,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 160, 28, 28)!,
                  Colors.red[900]!,
                ],
              ))),
          const FooterNavigation(),
        ]),
      ),
      drawer: const MakeMenuItems(),
    );
  }

  Widget _buildNewsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildNewsItem(
          'https://via.placeholder.com/150', // Placeholder image URL
          'THURSDAY, FEBRUARY 25, 2021',
          'John Hennessy honored for inventing the chip architecture behind computing',
          'Stanford’s President Emeritus and collaborator David Patterson share the BBVA Foundation Frontiers of Knowledge Award for this feat, and for co-authoring a textbook to train chip engineers.',
        ),
        const SizedBox(height: 25),
        _buildNewsItem(
          'https://via.placeholder.com/150', // Placeholder image URL
          'TUESDAY, FEBRUARY 9, 2021',
          'Once incarcerated, a transfer student forges a new path at Stanford',
          'Jason Spyres, who began his university studies as a transfer student in 2018, set his sights on the Farm after hearing an inspiring talk by a Stanford admission officer.',
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: const Text(
            "More News Stories »",
            style: TextStyle(
                fontStyle: FontStyle.italic, color: Color(0xE23E3E3E)),
          ),
        ),
      ],
    );
  }

  Widget _buildNewsItem(
      String imageUrl, String date, String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color.fromARGB(255, 176, 176, 176),
              padding: const EdgeInsets.all(4),
              child: Image.network(
                imageUrl, // Placeholder image URL
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromARGB(255, 142, 0, 0),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(
              fontSize: 14, color: Color.fromARGB(255, 37, 37, 37)),
        ),
      ],
    );
  }

  Widget _buildEventsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        _buildEventItem('SUNDAY, JANUARY 2', 'Stanford Winter Closure Ends',
            '12:00 am to 11:45 pm'),
        _buildEventItem('MONDAY, JANUARY 3', 'First Day of Winter Quarter',
            '12:00 am to 11:45 pm'),
        _buildEventItem(
            'WEDNESDAY, JANUARY 12',
            'ETL: Sara Menker, Founder and CEO, Gro Intelligence, Hans Tung, Managing Partner, GGV Capital',
            '4:00 pm to 5:00 pm'),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: const Text(
            "More Events »",
            style: TextStyle(
                fontStyle: FontStyle.italic, color: Color(0xE23E3E3E)),
          ),
        ),
      ],
    );
  }

  Widget _buildEventItem(String date, String title, String time) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(date,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 65, 65, 65))),
        Text(title,
            style: const TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 110, 7, 0))),
        Text(time),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildContactInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Gates Computer Science Building\n353 Jane Stanford Way\nStanford, CA 94305',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 8),
        const Text('Phone: (650) 723-2300', style: TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        const Text('Admissions :', style: TextStyle(fontSize: 16)),
        const Text('admissions@cs.stanford.edu',
            style:
                TextStyle(fontSize: 16, color: Color.fromARGB(255, 110, 7, 0))),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: const Text('Campus Map »'),
        ),
      ],
    );
  }
}

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int _currentIndex = 0;

  final List<String> _images = [
    'https://via.placeholder.com/150/FFFF00/000000',
    'https://via.placeholder.com/150/0000FF/808080',
  ];

  void _previousImage() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _images.length;
    });
  }

  void _nextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: const Color.fromARGB(255, 225, 225, 225),
            padding: const EdgeInsets.all(8),
            child: Stack(
              children: [
                Image.network(
                  _images[_currentIndex],
                  width: 400,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 10,
                  top: 75,
                  child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: _previousImage,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 75,
                  child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    child: IconButton(
                      icon:
                          const Icon(Icons.arrow_forward, color: Colors.white),
                      onPressed: _nextImage,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              color: const Color.fromARGB(255, 225, 225, 225),
              padding: const EdgeInsets.all(8),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Pat Hanrahan: “Curiosity and passion determine success”',
                  style: TextStyle(
                    color: Color.fromARGB(255, 107, 0, 0),
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                ),
              )),
        ],
      ),
    );
  }
}

class SectionHeading extends StatelessWidget {
  final String heading;
  const SectionHeading({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          heading,
          style: const TextStyle(
            fontSize: 40,
            color: Colors.black,
          ),
        ),
        Container(
          height: 1,
          color: Colors.grey[400],
        ),
      ],
    );
  }
}

class FooterNavigation extends StatelessWidget {
  const FooterNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[800],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Stanford',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Times"),
              textAlign: TextAlign.center,
            ),
            const Text(
              'University',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Times"),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(),
                      child: const Text(
                        'Stanford Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(),
                      child: const Text(
                        'Maps & Directions',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(),
                      child: const Text(
                        'Search',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(),
                      child: const Text(
                        'Stanford',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(),
                      child: const Text(
                        'Emergency Info',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                )),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(),
                        child: const Text(
                          'Terms of Use',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(),
                        child: const Text(
                          'Copyright',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(),
                        child: const Text(
                          'Trademarks',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(),
                          child: const Text(
                            'Non-Discrimination',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(),
                        child: const Text(
                          'Accessibility',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              '© Stanford University, Stanford, California 94305.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class BannerText extends StatelessWidget {
  const BannerText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Stanford',
            style: TextStyle(
              color: Colors.red,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'ENGINEERING',
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Computer Science',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}

class MenuAndSearchBar extends StatelessWidget {
  const MenuAndSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 24, 24, 24),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Builder(builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  color: Colors
                      .red[900], // Maroon background color for drawer icon
                  child: IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ),
              );
            }),
            const Spacer(),
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300], // Cream color background
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  ),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search this site...',
                    hintStyle: TextStyle(color: Colors.black54),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300], // Cream color background
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                child: IconButton(
                  icon: const Icon(Icons.search, color: Colors.black),
                  onPressed: () {
                    // Perform search action
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MakeMenuItems extends StatelessWidget {
  const MakeMenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Navigate to home
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Navigate to settings
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
