import 'package:flutter/material.dart';

class CurrencyPairsPage extends StatelessWidget {
  const CurrencyPairsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Currency Pairs')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Currencies are traded in pairs, showing how much one currency is worth in terms of another.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Major Pairs (Most Liquid):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('EUR/USD (Euro/US Dollar)'),
            _buildBulletPoint('USD/JPY (US Dollar/Japanese Yen)'),
            _buildBulletPoint('GBP/USD (British Pound/US Dollar)'),
            _buildBulletPoint('USD/CHF (US Dollar/Swiss Franc)'),
            const SizedBox(height: 16),
            const Text(
              'Minor Pairs:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('EUR/GBP (Euro/British Pound)'),
            _buildBulletPoint('AUD/JPY (Australian Dollar/Japanese Yen)'),
            const SizedBox(height: 16),
            const Text(
              'Exotic Pairs (Higher Risk):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('USD/TRY (US Dollar/Turkish Lira)', isImportant: true),
            _buildBulletPoint('EUR/TRY (Euro/Turkish Lira)', isImportant: true),
            const SizedBox(height: 16),
            Text(
              'Warning: Exotic pairs have wider spreads and higher risk.',
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