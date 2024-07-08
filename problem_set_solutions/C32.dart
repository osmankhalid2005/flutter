import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FireWoodWater()));
}

class FireWoodWater extends StatefulWidget {
  const FireWoodWater({super.key});
  @override
  State<FireWoodWater> createState() => _FireWoodWaterState();
}

class _FireWoodWaterState extends State<FireWoodWater> {
  List<String> list = ["Fire", "Wood", "Water"];

  int? compRand;
  String compVal = "";
  bool compbtn = true;

  int? userRand;
  String userVal = "";
  bool userbtn = true;

  String winner = "";

  void generateTurn(String player) {
    setState(() {
      if (player == "computer") {
        compRand = Random().nextInt(list.length);
        compVal = list[compRand!];
        compbtn = false;
      } else {
        userRand = Random().nextInt(list.length);
        userVal = list[userRand!];
        userbtn = false;
      }

      if (userVal != "" && compVal != "") {
        if (userVal == "Fire" && compVal == "Fire") {
          winner = "Draw";
        } else if (userVal == "Fire" && compVal == "Wood") {
          winner = "User";
        } else if (userVal == "Fire" && compVal == "Water") {
          winner = "Computer";
        } else if (userVal == "Wood" && compVal == "Fire") {
          winner = "Computer";
        } else if (userVal == "Wood" && compVal == "Wood") {
          winner = "Draw";
        } else if (userVal == "Wood" && compVal == "Water") {
          winner = "User";
        }
        if (userVal == "Water" && compVal == "Fire") {
          winner = "User";
        } else if (userVal == "Water" && compVal == "Wood") {
          winner = "Computer";
        } else if (userVal == "Water" && compVal == "Water") {
          winner = "Draw";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Fire, wood, water'))),
      body: Padding(
        padding: EdgeInsets.only(left: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text("User Value"),
                ),
                SizedBox(width: 20), // Space between columns
                Expanded(
                  child: Text(userVal),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text("Computer Value"),
                ),
                SizedBox(width: 20), // Space between columns
                Expanded(
                  child: Text(compVal),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text("Winner"),
                ),

                SizedBox(width: 20), // Space between columns

                Expanded(
                  child: Text(winner!),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Container(
                  width: 130,
                  height: 70,
                  child: ElevatedButton(
                    child: Text("Generate user value"),
                    onPressed:
                        userbtn == true ? () => generateTurn("user") : null,
                  ),
                ),
                SizedBox(width: 20), // Space between columns
                Container(
                  width: 130,
                  height: 70,
                  child: ElevatedButton(
                    child: Text("Generate computer value"),
                    onPressed:
                        compbtn == true ? () => generateTurn("computer") : null,
                  ),
                ),
                SizedBox(width: 30), // Space between columns
              ],
            ),
          ],
        ),
      ),
    );
  }
}
