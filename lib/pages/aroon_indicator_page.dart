import 'package:flutter/material.dart';

class AroonPage extends StatelessWidget {
  const AroonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aroon Indicator'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/aroon.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'The Aroon Indicator consists of Aroon Up (measures uptrend strength) and Aroon Down (downtrend strength), '
                    'ranging from 0-100. Values above 70 indicate strong trends, below 30 weak trends. Crossovers signal potential '
                    'trend changes - Up crossing above Down suggests bullish momentum. In the chart, the indicator clearly shows '
                    'when each trend is dominant. The indicator also helps identify consolidation periods (both lines below 50). '
                    'Aroon works well for identifying new trends early.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}