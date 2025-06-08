import 'package:flutter/material.dart';

class OnNeckLinePage extends StatelessWidget {
  const OnNeckLinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('On Neck Line Pattern'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            Image(
              image: AssetImage('assets/images/forex.jpeg'),
            ),
            SizedBox(height: 16),
            Text(
              'On Neck Line is a pattern where a long green candle is followed by a smaller red candle that opens below the previous close and closes near or at the low of the first candle. It suggests a continuation of bullish momentum.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
