import 'package:flutter/material.dart';
import 'falling_three_page.dart';
import 'separating_lines_page.dart';
import 'tasuki_gap_page.dart';

class BearishContinuationPage extends StatelessWidget {
  const BearishContinuationPage({super.key});

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
                'Bearish Continuation',
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
                          'Bearish Continuation Patterns',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'These patterns suggest the current downtrend is likely to continue:',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
          border: Border.all(color: Colors.red.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.08),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
