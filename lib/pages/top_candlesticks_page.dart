import 'package:flutter/material.dart';
import 'shooting_star_page.dart';
import 'bearish_engulfing_page.dart';
import 'dark_cloud_cover_page.dart';

class TopCandlesticksPage extends StatelessWidget {
  const TopCandlesticksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Candlesticks'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Top Reversal Patterns',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 16),
            const Text(
              'These patterns suggest a potential reversal from an uptrend to a downtrend:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            _PatternItem(
              name: 'Shooting Star',
              description: 'Small body near the low with a long upper shadow, appearing after an uptrend.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ShootingStarPage()),
                );
              },
            ),
            _PatternItem(
              name: 'Bearish Engulfing',
              description: 'A red candle that completely engulfs the body of the previous green candle.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const BearishEngulfingPage()),
                );
              },
            ),
            _PatternItem(
              name: 'Dark Cloud Cover',
              description: 'A red candle that opens above but closes below the midpoint of the previous green candle.',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const DarkCloudCoverPage()),
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
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 8),
            Text(description),
          ],
        ),
      ),
    );
  }
}
