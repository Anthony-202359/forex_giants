import 'package:flutter/material.dart';

class SupportResistancePage extends StatelessWidget {
  const SupportResistancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support & Resistance'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Understanding Support and Resistance',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'Support and resistance are key concepts in technical analysis used to identify potential reversal zones.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'What is Support?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Support is a price level where a downtrend can be expected to pause due to a concentration of demand.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            Image.asset(
              'assets/images/support.jpeg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              'What is Resistance?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Resistance is a price level where a trend can pause or reverse due to a concentration of selling interest.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            Image.asset(
              'assets/images/sandr.jpeg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              'How to Draw Support and Resistance Lines',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              '1. Use major swing highs and lows.\n'
                  '2. Look for areas with multiple touches.\n'
                  '3. Use higher timeframes for stronger levels.\n'
                  '4. Combine with other tools like trend lines or moving averages.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            Image.asset(
              'assets/images/resistance.jpeg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              'Tips:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const Text(
              '- Support can become resistance and vice versa.\n'
                  '- Watch for false breakouts.\n'
                  '- Use confirmation from price action (e.g., candlestick patterns).',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),

            // Breakout Section
            const Text(
              'Breakout and False Breakout',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            // Breakout Image First
            Image.asset(
              'assets/images/break.jpeg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            const Text(
              'A breakout occurs when the price moves above a resistance level or below a support level with strong momentum, indicating a potential continuation of the trend.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // False Breakout Image First
            Image.asset(
              'assets/images/false.jpeg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            const Text(
              'A false breakout happens when the price temporarily breaks through a support or resistance level but then quickly reverses, trapping traders who acted on the breakout.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
