import 'package:flutter/material.dart';

class MACDPage extends StatelessWidget {
  const MACDPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MACD'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/macd.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Moving Average Convergence Divergence (MACD) consists of: (1) MACD line (12-day EMA minus 26-day EMA), '
                    '(2) Signal line (9-day EMA of MACD), and (3) Histogram (difference between MACD and Signal). In the chart, '
                    'positive histogram bars (green) indicate bullish momentum, while negative (red) show bearish momentum. '
                    'Crossovers above/below the zero line suggest trend changes. Divergences between price and MACD can signal reversals.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}