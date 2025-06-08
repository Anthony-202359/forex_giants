import 'package:flutter/material.dart';

class RiskManagementPage extends StatelessWidget {
  const RiskManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Risk Management')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Risk management is the MOST IMPORTANT aspect of trading.',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 16),
            Text(
              'Essential Rules:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildRule('1-2% Rule', 'Never risk more than 1-2% of capital on a single trade'),
            _buildRule('Stop Losses', 'Always use stop loss orders'),
            _buildRule('Take Profits', 'Set profit targets before entering'),
            _buildRule('Risk/Reward', 'Aim for at least 1:2 ratio'),
            const SizedBox(height: 16),
            Text(
              'Common Mistakes:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('Overtrading (too many positions)'),
            _buildBulletPoint('Moving stop losses further away'),
            _buildBulletPoint('Revenge trading after losses'),
            const SizedBox(height: 16),
            Text(
              'WARNING: Poor risk management is the #1 reason traders fail.',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRule(String title, String description) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      color: Colors.red[50],
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
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