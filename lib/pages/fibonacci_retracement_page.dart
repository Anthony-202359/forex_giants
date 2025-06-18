import 'package:flutter/material.dart';

class FibonacciPage extends StatelessWidget {
  const FibonacciPage({super.key});

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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Text(
                'Fibonacci Retracement',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Card(
                  color: const Color(0xFFF3E8FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                    side: BorderSide(color: Colors.deepPurple.withOpacity(0.08), width: 1.5),
                  ),
                  elevation: 12,
                  margin: EdgeInsets.zero,
                  shadowColor: Colors.deepPurple.withOpacity(0.10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/fibinacci.jpeg',
                          height: 220,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'Fibonacci Retracement uses horizontal lines at key ratios (23.6%, 38.2%, 50%, 61.8%, 78.6%) to identify potential support/resistance levels during pullbacks. The chart shows these levels drawn between a swing low and high. Prices often find support/resistance at these levels before continuing the trend. The 61.8% level is particularly significant. Traders watch for price action signals (candlestick patterns, volume) at these levels to confirm reversals. Fibonacci extensions (not shown) project potential profit targets.',
                          style: TextStyle(fontSize: 18, height: 1.5),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}