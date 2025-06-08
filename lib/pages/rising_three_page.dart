import 'package:flutter/material.dart';

class RisingThreePage extends StatelessWidget {
  const RisingThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rising Three Methods'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            Image(
              image: AssetImage('assets/images/rising.jpeg'),
            ),
            SizedBox(height: 16),
            Text(
              'Rising Three Methods is a bullish continuation pattern. It starts with a long green (bullish) candle, followed by three or more small red (bearish) candles that stay within the range of the first green candle. It ends with another strong green candle, confirming the continuation of the uptrend.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
