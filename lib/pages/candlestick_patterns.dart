import 'package:flutter/material.dart';
import 'bullish_continuation_page.dart';
import 'bearish_continuation_page.dart';
import 'indecision_candlesticks_page.dart';
import 'top_candlesticks_page.dart';
import 'bottom_candlesticks_page.dart';

class CandlestickBasicsPage extends StatelessWidget {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Text(
              'Candlestick Patterns',
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
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                children: [
                  _PatternCard(
                    title: "Bullish Continuation",
                    icon: Icons.trending_up,
                    color: Colors.green,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BullishContinuationPage()),
                    ),
                  ),
                  _PatternCard(
                    title: "Bearish Continuation",
                    icon: Icons.trending_down,
                    color: Colors.red,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BearishContinuationPage()),
                    ),
                  ),
                  _PatternCard(
                    title: "Indecision Candlesticks",
                    icon: Icons.compare_arrows,
                    color: Colors.grey,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => IndecisionCandlesticksPage()),
                    ),
                  ),
                  _PatternCard(
                    title: "Top Candlesticks",
                    icon: Icons.warning,
                    color: Colors.red,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TopCandlesticksPage()),
                    ),
                  ),
                  _PatternCard(
                    title: "Bottom Candlesticks",
                    icon: Icons.warning,
                    color: Colors.green,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomCandlesticksPage()),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PatternCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _PatternCard({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      color: const Color(0xFFF3E8FF),
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(color: Colors.deepPurple.withOpacity(0.08), width: 1.5),
      ),
      shadowColor: Colors.deepPurple.withOpacity(0.10),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(24),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
          child: Row(
            children: [
              Icon(icon, color: color, size: 36),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 22, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}