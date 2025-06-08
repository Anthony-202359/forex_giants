import 'package:flutter/material.dart';

class ExponentialMAPage extends StatelessWidget {
  const ExponentialMAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exponential MA'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/exponential.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Exponential Moving Average (EMA) gives more weight to recent prices, making it more responsive than SMA. '
                    'The chart shows a 20-day EMA (red line) reacting faster to price changes than the SMA (blue line). '
                    'Traders often use EMA crossovers (e.g., 50-day crossing 200-day) as trend signals. The steeper the EMA angle, '
                    'the stronger the trend. EMAs work particularly well in trending markets but may give false signals in ranging markets.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}