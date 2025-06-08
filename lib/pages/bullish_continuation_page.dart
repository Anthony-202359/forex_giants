import 'package:flutter/material.dart';
import 'rising_three_page.dart';
import 'mat_hold_page.dart';
import 'on_neck_line_page.dart';

class BullishContinuationPage extends StatelessWidget {
  const BullishContinuationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bullish Continuation'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bullish Continuation Patterns',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'These patterns suggest the current uptrend is likely to continue:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            _PatternItem(
              name: 'Rising Three Methods',
              description:
              'A long green candle followed by three small red candles that stay within the range of the first candle, then another long green candle.',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RisingThreePage()),
              ),
            ),
            _PatternItem(
              name: 'Mat Hold',
              description:
              'A gap up followed by several small candles moving downward, then a strong green candle confirming the continuation.',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MatHoldPage()),
              ),
            ),
            _PatternItem(
              name: 'On Neck Line',
              description:
              'A long green candle followed by a small red candle that closes near the low of the first candle.',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OnNeckLinePage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 🔽 Widget to show pattern title and description only (no image)
class _PatternItem extends StatelessWidget {
  final String name;
  final String description;
  final VoidCallback onTap;

  const _PatternItem({
    required this.name,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 24),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            Text(description),
          ],
        ),
      ),
    );
  }
}
