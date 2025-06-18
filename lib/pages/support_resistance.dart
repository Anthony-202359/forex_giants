import 'package:flutter/material.dart';

class SupportResistancePage extends StatelessWidget {
  const SupportResistancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFe96443), Color(0xFF904e95)],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 100, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Support & Resistance',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 8,
                      color: Colors.black26,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              Card(
                color: const Color(0xFFF3E8FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                  side: BorderSide(color: Colors.deepPurple.withOpacity(0.08), width: 1.5),
                ),
                elevation: 12,
                margin: EdgeInsets.zero,
                shadowColor: Colors.deepPurple.withOpacity(0.10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Understanding Support and Resistance',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Support and resistance are key concepts in technical analysis used to identify potential reversal zones.',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'What is Support?',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Support is a price level where a downtrend can be expected to pause due to a concentration of demand.',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 12),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/support.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'What is Resistance?',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Resistance is a price level where a trend can pause or reverse due to a concentration of selling interest.',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 12),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/sandr.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'How to Draw Support and Resistance Lines',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        '1. Use major swing highs and lows.\n'
                        '2. Look for areas with multiple touches.\n'
                        '3. Use higher timeframes for stronger levels.\n'
                        '4. Combine with other tools like trend lines or moving averages.',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 12),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/resistance.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Tips:',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        '- Support can become resistance and vice versa.\n'
                        '- Watch for false breakouts.\n'
                        '- Use confirmation from price action (e.g., candlestick patterns).',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 32),
                      const Text(
                        'Breakout and False Breakout',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                      const SizedBox(height: 12),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/break.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'A breakout occurs when the price moves above a resistance level or below a support level with strong momentum, indicating a potential continuation of the trend.',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 24),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/false.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'A false breakout happens when the price temporarily breaks through a support or resistance level but then quickly reverses, trapping traders who acted on the breakout.',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
