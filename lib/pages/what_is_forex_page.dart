import 'package:flutter/material.dart';

class WhatIsForexPage extends StatelessWidget {
  const WhatIsForexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('What is Forex Trading?')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Forex (FX) is the global marketplace for exchanging national currencies.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Key Characteristics:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('Largest financial market (> \$6 trillion daily volume)'),
            _buildBulletPoint('Open 24/5 (closed weekends)'),
            _buildBulletPoint('Decentralized (no central exchange)'),
            _buildBulletPoint('Traded in currency pairs (e.g., EUR/USD)'),
            const SizedBox(height: 16),
            const Text(
              'Major Participants:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('Banks (70% of volume)'),
            _buildBulletPoint('Corporations (import/export needs)'),
            _buildBulletPoint('Governments (monetary policy)'),
            _buildBulletPoint('Retail traders (<10% of market)', isImportant: true),
            const SizedBox(height: 16),
            Text(
              'Warning: Forex trading involves significant risk of loss.',
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