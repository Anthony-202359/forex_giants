import 'package:flutter/material.dart';

class FibonacciPage extends StatelessWidget {
  const FibonacciPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fibonacci Retracement'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/fibinacci.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Fibonacci Retracement uses horizontal lines at key ratios (23.6%, 38.2%, 50%, 61.8%, 78.6%) to identify '
                    'potential support/resistance levels during pullbacks. The chart shows these levels drawn between a swing '
                    'low and high. Prices often find support/resistance at these levels before continuing the trend. The 61.8% '
                    'level is particularly significant. Traders watch for price action signals (candlestick patterns, volume) '
                    'at these levels to confirm reversals. Fibonacci extensions (not shown) project potential profit targets.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}