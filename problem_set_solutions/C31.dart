import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scoring Game Machine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GameScreen(),
    );
  }
}

class Player {
  int? playerNo;
  int? currentScore;
  int? turnNumber;
  bool? buttonStatus;
  bool? enabled;

  Player(
      {this.playerNo,
      this.currentScore,
      this.turnNumber,
      this.buttonStatus,
      this.enabled});
}

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scoring Game'),
      ),
      body: const Center(
        child: PlayerWidget(),
      ),
    );
  }
}

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({super.key});

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  final int targetScore = 10;
  bool showsummary = false;
  int? turnoutcome = 0;

  List<Map<String, dynamic>> matchSummary = [];

  List<Player> players = [
    Player(
        playerNo: 1,
        currentScore: 0,
        turnNumber: 0,
        buttonStatus: true,
        enabled: true),
    Player(
        playerNo: 2,
        currentScore: 0,
        turnNumber: 0,
        buttonStatus: false,
        enabled: true),
    Player(
        playerNo: 3,
        currentScore: 0,
        turnNumber: 0,
        buttonStatus: false,
        enabled: true),
  ];

  void playerTurn(int player) {
    int score = Random().nextInt(6) + 1;

    setState(() {
      turnoutcome = score;

      if (player == 0) {
        players[0].buttonStatus = false;
        players[0].currentScore = players[0].currentScore! + score;
        players[0].turnNumber = players[0].turnNumber! + 1;
        players[1].buttonStatus = true;

        if (players[0].currentScore! >= targetScore) {
          players[0].enabled = false;
          matchSummary.add({
            "Player": "1",
            "Score": "${players[0].currentScore}",
            "Turns": "${players[0].turnNumber}"
          });
        }
        if (players[1].enabled == false) {
          players[2].buttonStatus = true;
        }
      } else if (player == 1) {
        players[0].buttonStatus = false;
        players[1].buttonStatus = false;
        players[2].buttonStatus = true;

        players[1].currentScore = players[1].currentScore! + score;
        players[1].turnNumber = players[1].turnNumber! + 1;

        if (players[1].currentScore! >= targetScore) {
          players[1].enabled = false;
          matchSummary.add({
            "Player": "2",
            "Score": "${players[1].currentScore}",
            "Turns": "${players[1].turnNumber}"
          });
        }

        if (players[2].enabled == false) {
          players[0].buttonStatus = true;
        }
      } else if (player == 2) {
        players[0].buttonStatus = true;
        players[1].buttonStatus = false;
        players[2].buttonStatus = false;
        players[2].currentScore = players[2].currentScore! + score;
        players[2].turnNumber = players[2].turnNumber! + 1;

        if (players[2].currentScore! >= targetScore) {
          players[2].enabled = false;
          matchSummary.add({
            "Player": "3",
            "Score": "${players[2].currentScore}",
            "Turns": "${players[2].turnNumber}"
          });
        }
        if (players[0].enabled == false) {
          players[1].buttonStatus = true;
        }
      }

      int count = 0;
      for (int i = 0; i < players.length; i++) {
        if (players[i].enabled == false) {
          count = count + 1;
        }
      }

      if (count == players.length - 1) {
        showsummary = true;

        // First give priority to sort in terms of "score" in descending order.
        // and then give priority to sort in terms of "turns" in ascending order

        matchSummary.sort((a, b) {
          int ans = b['Score'].compareTo(a['Score']);

          if (ans == 0) {
            return a['Turns'].compareTo(b['Turns']);
          } else {
            return ans;
          }
        });

        players[0].buttonStatus = false;
        players[1].buttonStatus = false;
        players[2].buttonStatus = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text("Player: ${players[0].playerNo}"),
                Text("Outcome: $turnoutcome"),
                Text("Current Score: ${players[0].currentScore}"),
                Text("Target: $targetScore"),
                Text("Turn Numbrer: ${players[0].turnNumber}"),
                ElevatedButton(
                  onPressed: players[0].buttonStatus == true &&
                          players[0].enabled == true
                      ? () => playerTurn(0)
                      : null,
                  style:
                      ElevatedButton.styleFrom(fixedSize: const Size(100, 50)),
                  child: Text('Player ${players[0].playerNo}'),
                ),
              ],
            ),
            Column(
              children: [
                Text("Player: ${players[1].playerNo}"),
                Text("Outcome: $turnoutcome"),
                Text("Current Score: ${players[1].currentScore}"),
                Text("Target: $targetScore"),
                Text("Turn Numbrer: ${players[1].turnNumber}"),
                ElevatedButton(
                  onPressed: players[1].buttonStatus == true &&
                          players[1].enabled == true
                      ? () => playerTurn(1)
                      : null,
                  style:
                      ElevatedButton.styleFrom(fixedSize: const Size(100, 50)),
                  child: Text('Player ${players[1].playerNo}'),
                ),
              ],
            ),
            Column(
              children: [
                Text("Player: ${players[2].playerNo}"),
                Text("Outcome: $turnoutcome"),
                Text("Current Score: ${players[2].currentScore}"),
                Text("Target: $targetScore"),
                Text("Turn Numbrer: ${players[2].turnNumber}"),
                ElevatedButton(
                  onPressed: players[2].buttonStatus == true &&
                          players[2].enabled == true
                      ? () => playerTurn(2)
                      : null,
                  style:
                      ElevatedButton.styleFrom(fixedSize: const Size(100, 50)),
                  child: Text('Player ${players[2].playerNo}'),
                ),
              ],
            ),
          ],
        ),
        showsummary == true
            ? MatchSummary(matchSummary: matchSummary)
            : const SizedBox()
      ],
    );
  }
}

class MatchSummary extends StatelessWidget {
  final List<Map<String, dynamic>> matchSummary;

  const MatchSummary({super.key, required this.matchSummary});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text('Match Summary'),
        for (int i = 0; i < matchSummary.length; i++)
          Text(
              "Position: ${i + 1}: Player: ${matchSummary[i]['Player']} Score: ${matchSummary[i]['Score']} Turns: ${matchSummary[i]['Turns']}"),
      ],
    );
  }
}
