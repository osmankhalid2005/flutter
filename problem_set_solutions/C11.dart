import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Snakes and Ladders'),
        ),
        body: MoveIconWidget(),
      ),
    );
  }
}

class MoveIconWidget extends StatefulWidget {
  @override
  _MoveIconWidgetState createState() => _MoveIconWidgetState();
}

class _MoveIconWidgetState extends State<MoveIconWidget> {
  double leftPos = 40;
  double bottomPos = 180;
  int num = 0;
  int playerPosition = 0;  
  final int rows = 7;
  final int columns = 4;
  String gameStatus = "";

  final Map<int, int> snakes = {13: 1, 27: 16, 33: 18};
  final Map<int, int> ladders = {8: 11, 15: 26, 21: 31};

void displayMsg(String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(
            content: Text(msg),
            backgroundColor: Colors.blue,
            duration: Duration(seconds: 1),
          ),        );

}
  void movePlayer() {
    setState(() {
      int xAxis = 0;

      
      num = Random().nextInt(6) + 1;
      playerPosition = playerPosition + num;

    if (snakes.containsKey(playerPosition)) {
      playerPosition = snakes[playerPosition]!;
      displayMsg("You got a snake bite");

    } else if (ladders.containsKey(playerPosition)) {
      playerPosition = ladders[playerPosition]!;
      displayMsg("You stepped on ladder");
    } 

      // --->>> LEFT TO RIGHT - SPECIAL CASE --->>>

      if (playerPosition >= 1 && playerPosition <= 4) {
        leftPos = XTransformation(playerPosition + 1);

        bottomPos = YTransformation(1);
      }

      // <<<--- RIGHT TO LEFT  <<<----

      else if (playerPosition >= 5 && playerPosition <= 9) {     

        xAxis = playerPosition % 5 == 0 ? 0 : playerPosition % 5;

        leftPos = xAxis == 0
            ? XTransformation(5 + xAxis)
            : XTransformation(5 - xAxis);

        bottomPos = YTransformation(2);
      }

      // --->>> LEFT TO RIGHT --->>>

      else if (playerPosition >= 10 && playerPosition <= 14) {
        xAxis = playerPosition % 5 == 0 ? 0 : playerPosition % 5;

        leftPos = XTransformation(1 + xAxis);

        bottomPos = YTransformation(3);
      }

      // <<<--- RIGHT TO LEFT  <<<----

      else if (playerPosition >= 15 && playerPosition <= 19) {
        xAxis = playerPosition % 5 == 0 ? 0 : playerPosition % 5;

        leftPos = xAxis == 0
            ? XTransformation(5 + xAxis)
            : XTransformation(5 - xAxis);

        bottomPos = YTransformation(4);
      }

      // --->>> LEFT TO RIGHT --->>>

      else if (playerPosition >= 20 && playerPosition <= 24) {
        xAxis = playerPosition % 5 == 0 ? 0 : playerPosition % 5;

        leftPos = XTransformation(1 + xAxis);

        bottomPos = YTransformation(5);
      }

      // <<<--- RIGHT TO LEFT  <<<----

      else if (playerPosition >= 25 && playerPosition <= 29) {
        xAxis = playerPosition % 5 == 0 ? 0 : playerPosition % 5;

        leftPos = xAxis == 0
            ? XTransformation(5 + xAxis)
            : XTransformation(5 - xAxis);

        bottomPos = YTransformation(6);
      }

      // --->>> LEFT TO RIGHT --->>>

      else if (playerPosition >= 30 && playerPosition < 34) {
        xAxis = playerPosition % 5 == 0 ? 0 : playerPosition % 5;

        leftPos = XTransformation(1 + xAxis);

        bottomPos = YTransformation(7);
      } else if (playerPosition >= 34) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Game Over'),
            content: Text('You have won the game!'),
            actions: [
              TextButton(
                onPressed: () {
                  setState(() {
                    leftPos = 40;

                    bottomPos = 180;

                    playerPosition = 0;

                    num = 0;
                  });

                  Navigator.of(context).pop();
                },
                child: Text('Play Again'),
              ),
            ],
          ),
        );
      }
    });
  }

  double XTransformation(int number) {
    double left = 0;

    switch (number) {
      case 1:
        left = 40;
        break;

      case 2:
        left = 110;
        break;

      case 3:
        left = 186;
        break;

      case 4:
        left = 260;
        break;

      case 5:
        left = 335;
        break;
    }

    return left;
  }

  double YTransformation(int number) {
    double bottom = 0;

    switch (number) {
      case 1:
        bottom = 180;
        break;

      case 2:
        bottom = 250;
        break;

      case 3:
        bottom = 320;
        break;

      case 4:
        bottom = 390;
        break;

      case 5:
        bottom = 460;
        break;

      case 6:
        bottom = 535;
        break;

      case 7:
        bottom = 605;
        break;
    }

    return bottom;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image(
            image: AssetImage('images/SnakesLaddersBoard.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        // Movable image (replace with your actual image widget)

        Positioned(
          bottom: bottomPos,

          left: leftPos, // Set initial position (adjust as needed)

          child: Image(
            image: AssetImage('images/player.png'),
          ),
        ),

        Positioned(
          bottom: 8,
          left: MediaQuery.of(context).size.width / 2 - 180,
          child: ElevatedButton(
            onPressed: () => movePlayer(),
            child: Text(
              'Roll Dice',
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen[400], // Light green background

              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Slightly rounded corners
              ),
            ),
          ),
        ),

        Positioned(
          bottom: 20,
          left: MediaQuery.of(context).size.width / 2 - 40,
          child: Text('You Got: $num'),
        ),

        Positioned(
          bottom: 20,
          left: MediaQuery.of(context).size.width / 2 + 60,
          child: Text('Player Position: $playerPosition'),
        ),
      ],
    );
  }
}
