import 'package:flutter/material.dart';

class BollingerBandsPage extends StatelessWidget {
  const BollingerBandsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bollinger Bands'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/bollinger.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Bollinger Bands consist of a middle SMA (20-period typical) with upper/lower bands at 2 standard deviations. '
                    'The bands expand during volatile periods and contract during calm markets. Price touching upper band may be '
                    'overbought, lower band oversold. The "squeeze" (narrow bands) often precedes breakouts. In the chart, notice '
                    'how price tends to revert to the mean (middle line). Bollinger Bands work well with other indicators to confirm '
                    'overbought/oversold conditions.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}