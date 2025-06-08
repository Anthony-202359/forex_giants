import 'package:flutter/material.dart';

class ParabolicSARPage extends StatelessWidget {
  const ParabolicSARPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parabolic Stop and Reverse'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/parabolic.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Parabolic Stop and Reverse (SAR) dots appear below price in uptrends and above in downtrends, providing '
                    'entry/exit points. In the chart, dots flipping from below to above price signal potential trend reversals. '
                    'The indicator accelerates as trends strengthen, making dots follow price more closely. SAR works best in '
                    'strong trending markets but can give false signals in ranging conditions. Many traders use it as a trailing stop-loss mechanism.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}