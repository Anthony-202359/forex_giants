import 'package:flutter/material.dart';

class MatHoldPage extends StatelessWidget {
  const MatHoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mat Hold Pattern'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            Image(
              image: AssetImage('assets/images/mat.jpeg'),
            ),
            SizedBox(height: 16),
            Text(
              'Mat Hold is a bullish continuation pattern that begins with a strong green candle followed by several small candles (typically red) that trend slightly downward. These are then followed by another large green candle, confirming the bullish continuation.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
