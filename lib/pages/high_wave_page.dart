import 'package:flutter/material.dart';

class HighWavePage extends StatelessWidget {
  const HighWavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('High Wave Candle'),
        backgroundColor: Colors.grey[800],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              'assets/images/forex.jpeg',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            Text(
              'High Wave Candlestick',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Key Features:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            _buildFeature('Very long upper and lower shadows'),
            _buildFeature('Small real body (can be any color)'),
            _buildFeature('Shadows at least 2-3 times longer than the body'),
            const SizedBox(height: 20),
            Text(
              'Market Psychology:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'High wave candles show extreme indecision and volatility. The long shadows represent '
                  'a battle between bulls and bulls, with neither side gaining control. These often appear '
                  'at turning points or during periods of high uncertainty.',
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red[50]!, Colors.white],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.red[100]!),
              ),
              child: Column(
                children: [
                  Text(
                    'Trading Strategy:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red[800],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '1. Wait for confirmation candle\n'
                        '2. Look for volume spike during formation\n'
                        '3. Consider the location in the trend\n'
                        '4. Use with other technical indicators',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeature(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.red),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}