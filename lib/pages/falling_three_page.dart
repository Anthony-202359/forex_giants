import 'package:flutter/material.dart';

class FallingThreePage extends StatelessWidget {
  const FallingThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Falling Three Methods'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              'assets/images/forex.jpeg',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            const Text(
              'Falling Three Methods Pattern',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 16),
            const Text(
              'This bearish continuation pattern consists of:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            _buildBulletPoint('1. A long red (bearish) candle'),
            _buildBulletPoint('2. Three small green (bullish) candles contained within the first candle\'s range'),
            _buildBulletPoint('3. A final long red candle that closes below the first candle\'s close'),
            const SizedBox(height: 20),
            const Text(
              'Trading Implications:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'The pattern shows temporary consolidation before continuation of the downtrend. '
                  'The three small candles represent weak buying pressure that fails to reverse the trend. '
                  'Traders often enter short positions after the final red candle confirms the continuation.',
            ),
            const SizedBox(height: 20),
            Text(
              'Key Characteristics:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 8),
            _buildBulletPoint('Occurs during a clear downtrend'),
            _buildBulletPoint('First candle should have a large real body'),
            _buildBulletPoint('Small candles should stay within first candle\'s range'),
            _buildBulletPoint('Volume typically declines during small candles'),
          ],
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}