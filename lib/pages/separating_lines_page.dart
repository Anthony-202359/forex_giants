import 'package:flutter/material.dart';

class SeparatingLinesPage extends StatelessWidget {
  const SeparatingLinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bearish Separating Lines'),
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
              'Bearish Separating Lines Pattern',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 16),
            const Text(
              'This continuation pattern consists of:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            _buildBulletPoint('1. A green (bullish) candle during a downtrend'),
            _buildBulletPoint('2. A red (bearish) candle that gaps down but opens at the same price as the previous candle\'s open'),
            const SizedBox(height: 20),
            const Text(
              'Market Psychology:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'The pattern shows a failed attempt at reversal. The first candle suggests buying pressure, '
                  'but the second candle gaps down yet opens at the same level, showing bears have regained control. '
                  'The identical opens "separate" the two opposing forces.',
            ),
            const SizedBox(height: 20),
            Text(
              'Trading Considerations:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 8),
            _buildBulletPoint('Confirmation comes when price moves below the low of the second candle'),
            _buildBulletPoint('Stronger signal when occurring with high volume'),
            _buildBulletPoint('Often appears at resistance levels during downtrends'),
            _buildBulletPoint('Stop loss can be placed above the high of the pattern'),
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