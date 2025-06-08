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
      appBar: AppBar(
        title: Text('Candlestick Patterns'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
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
      margin: EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(icon, color: color, size: 32),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}