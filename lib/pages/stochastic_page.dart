import 'package:flutter/material.dart';

class StochasticPage extends StatelessWidget {
  const StochasticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stochastic Oscillator'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/stoch.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'The Stochastic Oscillator (14,3,3 typical settings) compares closing price to price range over time. '
                    'It oscillates between 0-100 with overbought (>80) and oversold (<20) zones. The chart shows %K (blue) '
                    'and %D (red) lines - crossovers signal potential reversals. Bullish/bearish divergences occur when price '
                    'makes new extremes but Stochastic doesn\'t. The indicator works best in ranging markets and should be '
                    'confirmed with trend indicators in trending markets.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}