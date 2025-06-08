import 'package:flutter/material.dart';

class LongShortPage extends StatelessWidget {
  const LongShortPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Going Long vs. Short')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Long Position:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('Buying a currency pair (expecting it to rise)'),
            _buildBulletPoint('Example: Buy EUR/USD = Buy EUR, Sell USD'),
            const SizedBox(height: 16),
            const Text(
              'Short Position:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('Selling a currency pair (expecting it to fall)'),
            _buildBulletPoint('Example: Sell EUR/USD = Sell EUR, Buy USD'),
            const SizedBox(height: 16),
            Text(
              'Key Difference: In forex, you can profit from both rising AND falling markets.',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Warning: Short selling carries unlimited risk potential if the market moves against you.',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text, {bool isImportant = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• '),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: isImportant ? Colors.red : null,
                fontWeight: isImportant ? FontWeight.bold : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}