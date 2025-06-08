import 'package:flutter/material.dart';
import 'hammer_page.dart';
import 'bullish_engulfing_page.dart';
import 'piercing_line_page.dart';

class BottomCandlesticksPage extends StatelessWidget {
  const BottomCandlesticksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Candlesticks'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bottom Reversal Patterns',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 16),
            const Text(
              'These patterns suggest a potential reversal from a downtrend to an uptrend:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            _PatternItem(
              name: 'Hammer',
              description: 'Small body near the high with a long lower shadow, appearing after a downtrend.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HammerPage()),
                );
              },
            ),
            _PatternItem(
              name: 'Bullish Engulfing',
              description: 'A green candle that completely engulfs the body of the previous red candle.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const BullishEngulfingPage()),
                );
              },
            ),
            _PatternItem(
              name: 'Piercing Line',
              description: 'A green candle that opens below but closes above the midpoint of the previous red candle.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const PiercingLinePage()),
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
        margin: const EdgeInsets.only(bottom: 16),
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
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 8),
            Text(description),
          ],
        ),
      ),
    );
  }
}