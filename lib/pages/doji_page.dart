import 'package:flutter/material.dart';

class DojiPage extends StatelessWidget {
  const DojiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doji Pattern'),
        backgroundColor: Colors.grey[800],
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
            Text(
              'Doji Candlestick',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'A Doji occurs when the opening and closing prices are virtually equal:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            _buildFeature('Perfect Doji', 'Open = Close (exactly equal)'),
            _buildFeature('Standard Doji', 'Open ≈ Close (nearly equal)'),
            _buildFeature('Long-Legged Doji', 'Long upper and lower shadows'),
            const SizedBox(height: 20),
            Text(
              'Market Significance:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Dojis represent indecision in the market. After a strong trend, a Doji suggests '
                  'the trend may be losing momentum and a reversal could occur. The longer the shadows, '
                  'the more significant the indecision.',
            ),
            const SizedBox(height: 20),
            _buildTradingTip(
              'At market tops: Potential bearish reversal signal',
              Colors.red,
            ),
            _buildTradingTip(
              'At market bottoms: Potential bullish reversal signal',
              Colors.green,
            ),
            _buildTradingTip(
              'During trends: May indicate continuation pause',
              Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeature(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.circle, size: 8, color: Colors.red[400]),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTradingTip(String text, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border(left: BorderSide(color: color, width: 4)),
        color: color.withOpacity(0.1),
      ),
      child: Text(text),
    );
  }
}