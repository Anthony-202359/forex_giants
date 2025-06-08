import 'package:flutter/material.dart';

class RSIPage extends StatelessWidget {
  const RSIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Relative Strength Index (RSI)'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/rsi.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'The Relative Strength Index (RSI) is a momentum oscillator that measures the speed and change of price movements. '
                    'It ranges from 0 to 100 and is typically used to identify overbought or oversold conditions in a market. '
                    'An RSI above 70 is generally considered overbought, while an RSI below 30 is considered oversold.\n',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}