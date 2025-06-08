import 'package:flutter/material.dart';

class TasukiGapPage extends StatelessWidget {
  const TasukiGapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Downside Tasuki Gap'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              'assets/images/tasuki.jpeg',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            const Text(
              'Downside Tasuki Gap Pattern',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 16),
            const Text(
              'This bearish continuation pattern consists of:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            _buildBulletPoint('1. A long red candle in a downtrend'),
            _buildBulletPoint('2. Another red candle that gaps down'),
            _buildBulletPoint('3. A green candle that opens within the body of the second candle'),
            const SizedBox(height: 20),
            const Text(
              'Pattern Significance:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'The Tasuki gap shows that despite temporary buying pressure (green candle), '
                  'sellers remain in control. The failure to close the gap suggests weakness in the '
                  'counter-trend movement and likelihood of trend continuation.',
            ),
            const SizedBox(height: 20),
            Text(
              'Key Features:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 8),
            _buildBulletPoint('The gap between the first two candles should not be filled'),
            _buildBulletPoint('The green candle should not close above the first candle\'s close'),
            _buildBulletPoint('Stronger confirmation when the fourth candle continues downward'),
            _buildBulletPoint('Volume often increases on the third candle'),
            const SizedBox(height: 20),
            const Text(
              'The name "Tasuki" comes from a Japanese word for a cloth strap used to hold up sleeves, '
                  'metaphorically representing the pattern\'s structure holding up the trend continuation.',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
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