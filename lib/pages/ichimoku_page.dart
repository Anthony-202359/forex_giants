import 'package:flutter/material.dart';

class IchimokuPage extends StatelessWidget {
  const IchimokuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ichimoku Cloud'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/ichimoku.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'The Ichimoku Cloud provides multiple indicators in one view: (1) Tenkan-sen (conversion line, blue), '
                    '(2) Kijun-sen (base line, red), (3) Senkou Span A/B (cloud), (4) Chikou Span (lagging line, green). '
                    'Price above cloud = uptrend, below = downtrend. Cloud thickness indicates support/resistance strength. '
                    'Crosses between Tenkan and Kijun signal momentum changes. The chart shows how the cloud flips color '
                    '(red/green) at trend changes. Ichimoku works best on daily/weekly charts and provides a comprehensive '
                    'view of support/resistance, momentum, and trend direction.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}