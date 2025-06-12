import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tic Tac Toe Game'),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: TicTacToeBoard(),
          ),
        ),
      ),
    );
  }
}

class TicTacToeGame {
  final List<String?> board = List.filled(9, null); // Represents the board
  final List<int> visitedCellsA = [];
  final List<int> visitedCellsB = [];
  bool isGameOver = false;
  String winner = '';

  void playerATurn() {
    if (isGameOver) return;

    final random = Random();
    int cellIndex = random.nextInt(9);

    // Skip turn if cell is already visited
    if (board[cellIndex] != null) {
      return;
    }

    // Mark the cell for Player A
    board[cellIndex] = 'O';
    visitedCellsA.add(cellIndex);

    // Check if Player A wins
    if (checkWin(visitedCellsA)) {
      winner = 'Player A';
      isGameOver = true;
    } else if (board.every((cell) => cell != null)) {
      winner = 'Draw';
      isGameOver = true;
    }
  }

  void playerBTurn() {
    if (isGameOver) return;

    final random = Random();
    int cellIndex = random.nextInt(9);

    // Skip turn if cell is already visited
    if (board[cellIndex] != null) {
      return;
    }

    // Mark the cell for Player B
    board[cellIndex] = 'X';
    visitedCellsB.add(cellIndex);

    // Check if Player B wins
    if (checkWin(visitedCellsB)) {
      winner = 'Player B';
      isGameOver = true;
    } else if (board.every((cell) => cell != null)) {
      winner = 'Draw';
      isGameOver = true;
    }
  }

  bool checkWin(List<int> visitedCells) {
    const winningCombinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var combination in winningCombinations) {
      if (combination.every((cell) => visitedCells.contains(cell))) {
        return true;
      }
    }
    return false;
  }
}

class TicTacToeBoard extends StatefulWidget {
  const TicTacToeBoard({Key? key}) : super(key: key);

  @override
  _TicTacToeBoardState createState() => _TicTacToeBoardState();
}

class _TicTacToeBoardState extends State<TicTacToeBoard> {
  final TicTacToeGame game = TicTacToeGame();

  @override
  void initState() {
    super.initState();
    playGame();
  }

  void playGame() async {
    while (!game.isGameOver) {
      setState(() {
        game.playerATurn();
      });
      await Future.delayed(const Duration(milliseconds: 500));
      if (game.isGameOver) break;

      setState(() {
        game.playerBTurn();
      });
      await Future.delayed(const Duration(milliseconds: 500));
    }

    if (game.winner.isNotEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Game Over'),
          content: Text(game.winner == 'Draw'
              ? "It's a draw!"
              : '${game.winner} wins!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(300, 300),
      painter: BoardPainter(game.board),
    );
  }
}

class BoardPainter extends CustomPainter {
  final List<String?> board;

  BoardPainter(this.board);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    final double cellWidth = size.width / 3;
    final double cellHeight = size.height / 3;

    // Draw vertical lines
    for (int i = 1; i < 3; i++) {
      final x = cellWidth * i;
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }

    // Draw horizontal lines
    for (int i = 1; i < 3; i++) {
      final y = cellHeight * i;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }

    // Draw the board state
    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    for (int i = 0; i < board.length; i++) {
      if (board[i] != null) {
        final col = i % 3;
        final row = i ~/ 3;

        final x = col * cellWidth + cellWidth / 2;
        final y = row * cellHeight + cellHeight / 2;

        textPainter.text = TextSpan(
          text: board[i],
          style: TextStyle(
            color: board[i] == 'O' ? Colors.blue : Colors.red,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        );

        textPainter.layout();
        textPainter.paint(
          canvas,
          Offset(x - textPainter.width / 2, y - textPainter.height / 2),
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
