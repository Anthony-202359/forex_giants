import 'package:flutter/material.dart';

class StandardDeviationPage extends StatelessWidget {
  const StandardDeviationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Standard Deviation'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/std.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Standard Deviation measures price volatility by showing how much prices deviate from their average. '
                    'High values (peaks in the chart) indicate high volatility, while low values show stable periods. '
                    'This indicator helps identify when markets are unusually volatile or quiet compared to their normal '
                    'behavior. Traders often combine it with mean-reversion strategies, looking for prices to return to '
                    'the mean after extreme deviations. The indicator is also used in constructing Bollinger Bands.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}