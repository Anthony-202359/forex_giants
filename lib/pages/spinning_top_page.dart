import 'package:flutter/material.dart';

class SpinningTopPage extends StatelessWidget {
  const SpinningTopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spinning Top'),
        backgroundColor: Colors.grey[800],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              'assets/images/spinning.jpeg',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            Text(
              'Spinning Top Pattern',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Characteristics of a Spinning Top:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            _buildCharacteristic('Small real body (short between open and close)'),
            _buildCharacteristic('Upper and lower shadows of approximately equal length'),
            _buildCharacteristic('Can be either bullish or bearish colored'),
            const SizedBox(height: 20),
            Text(
              'Trading Implications:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Spinning tops indicate market indecision. After a strong move, they suggest the trend may be losing steam. '
                  'The pattern is more significant when it appears at key support/resistance levels or after a prolonged trend.',
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  const Text(
                    'Warning:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Spinning tops require confirmation. Always wait for the next candle to confirm the direction '
                        'before entering a trade based on this pattern alone.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCharacteristic(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.adjust, size: 16, color: Colors.red[400]),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}