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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Text(
                'Indecision Candlesticks',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Card(
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Indecision Candlestick Patterns',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'These patterns suggest market indecision and potential trend reversal or consolidation:',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
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
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.deepPurple.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple.withOpacity(0.08),
              blurRadius: 8,
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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 22,
                  color: Colors.deepPurple,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}