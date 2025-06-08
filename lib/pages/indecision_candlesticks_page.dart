import 'package:flutter/material.dart';

// Import the individual pattern pages
import 'doji_page.dart';
import 'spinning_top_page.dart';
import 'high_wave_page.dart';

class IndecisionCandlesticksPage extends StatelessWidget {
  const IndecisionCandlesticksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indecision Candlesticks'),
        backgroundColor: Colors.grey[800],
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
            Text(
              'Indecision Candlestick Patterns',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'These patterns suggest market indecision and potential trend reversal or consolidation:',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 24),
            _PatternItem(
              name: 'Doji',
              description: 'When opening and closing prices are virtually equal, showing indecision in the market.',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DojiPage()),
              ),
            ),
            _PatternItem(
              name: 'Spinning Top',
              description: 'Small body with upper and lower shadows of approximately equal length, indicating indecision.',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SpinningTopPage()),
              ),
            ),
            _PatternItem(
              name: 'High Wave',
              description: 'Candles with very long upper and lower shadows relative to the body, showing high volatility and indecision.',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HighWavePage()),
              ),
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
          border: Border.all(color: Colors.grey[400]!),
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[50],
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.red[400],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}