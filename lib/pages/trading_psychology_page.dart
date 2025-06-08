import 'package:flutter/material.dart';

class TradingPsychologyPage extends StatelessWidget {
  const TradingPsychologyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trading Psychology')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Psychology accounts for 80% of trading success:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              'Common Psychological Traps:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildTrap('Fear', 'Closing winning trades too early'),
            _buildTrap('Greed', 'Holding winners too long'),
            _buildTrap('Hope', 'Not closing losing trades'),
            _buildTrap('Revenge Trading', 'Trying to recover losses quickly'),
            const SizedBox(height: 16),
            Text(
              'Developing Discipline:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('Follow your trading plan strictly'),
            _buildBulletPoint('Accept losses as part of the business'),
            _buildBulletPoint('Take breaks after losses'),
            _buildBulletPoint('Keep a trading journal'),
            const SizedBox(height: 16),
            Text(
              'Important: Emotional control is more important than technical skills.',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrap(String name, String description) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(description),
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