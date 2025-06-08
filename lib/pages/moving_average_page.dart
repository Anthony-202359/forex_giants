import 'package:flutter/material.dart';

class MovingAveragePage extends StatelessWidget {
  const MovingAveragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Moving Average'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/moving.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Moving Averages (MA) smooth price data to identify trends. The Simple Moving Average (SMA) calculates '
                    'the average price over a specific period. In the chart above, the blue line represents a 50-day SMA, '
                    'showing the overall trend direction. When price crosses above the MA, it may signal a buying opportunity, '
                    'while crossing below may indicate a selling point. Longer periods (200-day) show stronger support/resistance levels.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}