import 'package:flutter/material.dart';

class MarketHoursPage extends StatelessWidget {
  const MarketHoursPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forex Market Hours')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Forex Market Sessions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildSessionCard('Sydney', '5PM - 2AM UTC'),
            _buildSessionCard('Tokyo', '12AM - 9AM UTC'),
            _buildSessionCard('London', '8AM - 5PM UTC', isMajor: true),
            _buildSessionCard('New York', '1PM - 10PM UTC', isMajor: true),
            const SizedBox(height: 16),
            Text(
              'Best Trading Times:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('Highest volatility during London/New York overlap (1PM-5PM UTC)'),
            _buildBulletPoint('Lowest liquidity during Asian session'),
            const SizedBox(height: 16),
            Text(
              'Warning: Trading during low liquidity periods can result in wider spreads.',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSessionCard(String name, String hours, {bool isMajor = false}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      color: isMajor ? Colors.red[50] : null,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isMajor ? Colors.red : null,
              ),
            ),
            Text(hours),
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
          const Text('• '),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}