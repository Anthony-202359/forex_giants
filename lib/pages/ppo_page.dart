import 'package:flutter/material.dart';

class PPOPage extends StatelessWidget {
  const PPOPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percentage Price Oscillator'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/percent.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Percentage Price Oscillator (PPO) shows the percentage difference between two EMAs (typically 12 & 26 periods). '
                    'Similar to MACD but displays as a percentage, making comparisons across different securities easier. The chart '
                    'displays the PPO line (blue) and its signal line (orange). Crossovers indicate momentum shifts, while the zero '
                    'line separates bullish/bearish territory. PPO is especially useful for comparing asset performance regardless of price.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}