import 'package:flutter/material.dart';

class TechnicalAnalysisPage extends StatelessWidget {
  const TechnicalAnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Technical Analysis')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Technical analysis studies price charts to predict future movements:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              'Key Concepts:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildConcept('Support/Resistance', 'Price floors and ceilings'),
            _buildConcept('Trend Lines', 'Identifying market direction'),
            _buildConcept('Candlestick Patterns', 'Price action signals'),
            const SizedBox(height: 16),
            Text(
              'Common Indicators:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('Moving Averages (MA)'),
            _buildBulletPoint('Relative Strength Index (RSI)'),
            _buildBulletPoint('MACD'),
            _buildBulletPoint('Bollinger Bands'),
            const SizedBox(height: 16),
            Text(
              'Important: No indicator works 100% of the time. Always use stop losses.',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConcept(String name, String description) {
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