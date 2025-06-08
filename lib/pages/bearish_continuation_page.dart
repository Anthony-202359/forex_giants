import 'package:flutter/material.dart';
import 'falling_three_page.dart';
import 'separating_lines_page.dart';
import 'tasuki_gap_page.dart';

class BearishContinuationPage extends StatelessWidget {
  const BearishContinuationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bearish Continuation'),
        backgroundColor: Colors.red,
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
              'Bearish Continuation Patterns',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 16),
            const Text(
              'These patterns suggest the current downtrend is likely to continue:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            _PatternItem(
              name: 'Falling Three Methods',
              description:
              'A long red candle followed by three small green candles that stay within the range of the first candle, then another long red candle.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const FallingThreePage()),
                );
              },
            ),
            _PatternItem(
              name: 'Bearish Separating Lines',
              description:
              'A green candle followed by a red candle that gaps down but opens at the same price as the previous open.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SeparatingLinesPage()),
                );
              },
            ),
            _PatternItem(
              name: 'Downside Tasuki Gap',
              description:
              'A red candle followed by another red candle with a gap down, then a green candle that opens within the body of the second candle.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const TasukiGapPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

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
          border: Border.all(color: Colors.red),
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
                color: Colors.red,
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
