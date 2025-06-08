import 'package:flutter/material.dart';

class FundamentalAnalysisPage extends StatelessWidget {
  const FundamentalAnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fundamental Analysis')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Fundamental analysis examines economic factors that affect currency values:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              'Key Economic Indicators:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildIndicator('Interest Rates', 'Most important factor'),
            _buildIndicator('GDP Growth', 'Measures economic health'),
            _buildIndicator('Inflation (CPI)', 'Central bank target'),
            _buildIndicator('Employment Data', 'Labor market strength'),
            _buildIndicator('Trade Balance', 'Exports vs. Imports'),
            const SizedBox(height: 16),
            Text(
              'Central Bank Policies:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('Federal Reserve (USD)'),
            _buildBulletPoint('European Central Bank (EUR)'),
            _buildBulletPoint('Bank of Japan (JPY)'),
            const SizedBox(height: 16),
            Text(
              'Warning: News events can cause extreme volatility.',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIndicator(String name, String description) {
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