import 'package:flutter/material.dart';

class ADXPage extends StatelessWidget {
  const ADXPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Average Directional Index'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/direction.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'The Average Directional Index (ADX) measures trend strength from 0-100, regardless of direction. '
                    'Values above 25 indicate strong trends, below 20 weak trends. The chart shows +DI (green) and -DI (red) '
                    'lines that identify trend direction when they cross. ADX alone doesn\'t show direction - combine with +DI/-DI. '
                    'Peaking ADX often precedes reversals. This indicator works best for confirming whether a market is trending '
                    'before applying trend-following strategies.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}