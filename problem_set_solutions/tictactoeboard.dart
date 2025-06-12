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

class TicTacToeBoard extends StatelessWidget {
  const TicTacToeBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Static board with predefined values
    final List<String?> board = [
      'O', '', '',
      '', 'X', '',
      'O', '', '',
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomPaint(
          size: const Size(300, 300),
          painter: BoardPainter(board),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: null, // Button does nothing
              child: const Text('Player 1 Turn'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: null, // Button does nothing
              child: const Text('Player 2 Turn'),
            ),
          ],
        ),
      ],
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
    return false;
  }
}
