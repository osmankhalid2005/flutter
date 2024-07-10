import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color currentColor = Colors.red;
  String currentColorName = "RED";

  Color bgcolorRed = Colors.red;
  Color bgcolorGreen = Colors.green;
  Color bgcolorBlue = Colors.blue;

  Color fgcolorRed = Colors.black;
  Color fgcolorGreen = Colors.white;
  Color fgcolorBlue = Colors.white;

  void changeColor(String colorName) {
    setState(() {
      if (colorName.compareTo("RED") == 0) {
        fgcolorRed = Colors.black;
        fgcolorGreen = Colors.white;
        fgcolorBlue = Colors.white;

        currentColor = Colors.red;
        currentColorName = "RED";
      } else if (colorName.compareTo("GREEN") == 0) {
        fgcolorRed = Colors.white;
        fgcolorGreen = Colors.black;
        fgcolorBlue = Colors.white;

        currentColor = Colors.green;
        currentColorName = "GREEN";
      } else if (colorName.compareTo("BLUE") == 0) {
        fgcolorRed = Colors.white;
        fgcolorGreen = Colors.white;
        fgcolorBlue = Colors.black;

        currentColor = Colors.blue;
        currentColorName = "BLUE";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(''))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => changeColor("RED"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: bgcolorRed, // Background color
                  foregroundColor: fgcolorRed, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                    side: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0), // Border color
                      width: 1, // Border width
                    ),
                  ),
                  minimumSize: Size(80, 40),
                  padding: EdgeInsets.symmetric(
                      horizontal: 16, vertical: 8), // Button padding
                ),
                child: Text(
                  "RED",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(width: 20), // Space between columns
              ElevatedButton(
                onPressed: () => changeColor("GREEN"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: bgcolorGreen, // Background color
                  foregroundColor: fgcolorGreen, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                    side: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0), // Border color
                      width: 1, // Border width
                    ),
                  ),
                  minimumSize: Size(80, 40),
                  padding: EdgeInsets.symmetric(
                      horizontal: 16, vertical: 8), // Button padding
                ),
                child: Text(
                  "GREEN",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(width: 20), // Space between columns
              ElevatedButton(
                onPressed: () => changeColor("BLUE"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: bgcolorBlue, // Background color
                  foregroundColor: fgcolorBlue, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                    side: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0), // Border color
                      width: 1, // Border width
                    ),
                  ),
                  minimumSize: Size(80, 40), // Set the fixed width and height
                  padding: EdgeInsets.symmetric(
                      horizontal: 16, vertical: 8), // Button padding
                ),
                child: Text("BLUE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
              width: 200,
              padding: EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "$currentColorName is clicked",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
              color: currentColor)
        ],
      ),
    );
  }
}
