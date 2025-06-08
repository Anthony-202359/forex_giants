import 'package:flutter/material.dart';

class DistributionLinePage extends StatelessWidget {
  const DistributionLinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Distribution Line'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/distribution.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'The Distribution Line (Accumulation/Distribution) combines price and volume to measure buying/selling pressure. '
                    'Rising line (green area in chart) shows accumulation (buying), falling line (red) indicates distribution '
                    '(selling). Divergences between price and the indicator often precede reversals - notice how the indicator '
                    'started falling while price made higher highs before the drop. The steeper the line, the stronger the '
                    'buying/selling pressure. This indicator works particularly well for confirming breakouts and spotting '
                    '"smart money" activity.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}