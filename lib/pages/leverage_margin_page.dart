import 'package:flutter/material.dart';

class LeverageMarginPage extends StatelessWidget {
  const LeverageMarginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Leverage and Margin')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Leverage allows controlling large positions with small capital.',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Leverage Example:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('50:1 leverage means \$1 controls \$50'),
            _buildBulletPoint('100:1 means \$1 controls \$100'),
            const SizedBox(height: 16),
            const Text(
              'Margin:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildBulletPoint('The collateral needed to open a position'),
            _buildBulletPoint('Margin Call: When account equity falls below required margin'),
            const SizedBox(height: 16),
            Text(
              'DANGER: High leverage amplifies both profits AND losses.',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Example: With 100:1 leverage, a 1% move against you = 100% loss.',
              style: TextStyle(color: Colors.red),
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