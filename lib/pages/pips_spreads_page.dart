import 'package:flutter/material.dart';

class PipsSpreadsPage extends StatelessWidget {
  const PipsSpreadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pips and Spreads')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pip:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('A pip (percentage in point) is the smallest price move a currency pair can make.'),
            _buildBulletPoint('For most pairs: 0.0001 (1/100 of 1%)'),
            _buildBulletPoint('For JPY pairs: 0.01'),
            const SizedBox(height: 16),
            const Text(
              'Spread:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('The difference between the bid (sell) and ask (buy) price.'),
            _buildBulletPoint('Measured in pips'),
            _buildBulletPoint('Major pairs have tighter spreads'),
            _buildBulletPoint('Exotics have wider spreads', isImportant: true),
            const SizedBox(height: 16),
            Text(
              'Important: The spread is your immediate trading cost.',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
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