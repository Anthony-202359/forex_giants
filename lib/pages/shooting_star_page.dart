import 'package:flutter/material.dart';

class ShootingStarPage extends StatelessWidget {
  const ShootingStarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shooting Star'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              'assets/images/forex.jpeg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 24),
            const Text(
              'Shooting Star Pattern',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'The Shooting Star is a bearish reversal pattern that forms after an uptrend. It has the following characteristics:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• Small real body near the low of the candle', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Text('• Long upper shadow (at least twice the length of the body)', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Text('• Little to no lower shadow', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Text('• Typically appears after a clear uptrend', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Trading Implications:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'The Shooting Star suggests that buyers pushed prices up during the session, but sellers countered and pushed prices back down to close near the open. This indicates potential weakness in the uptrend and a possible reversal.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
