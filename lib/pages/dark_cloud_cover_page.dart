import 'package:flutter/material.dart';

class DarkCloudCoverPage extends StatelessWidget {
  const DarkCloudCoverPage({super.key});

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
          onPressed: () => Navigator.of(context).pop(),
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
                'Dark Cloud Cover',
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
                          'assets/images/dark.jpeg',
                          height: 220,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'Dark Cloud Cover Pattern',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'The Dark Cloud Cover is a bearish reversal pattern consisting of two candles that appears during an uptrend. It has the following characteristics:',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        _BulletPoint('First candle is a strong green (bullish) candle'),
                        _BulletPoint('Second candle opens above the high of the first candle'),
                        _BulletPoint('Second candle closes below the midpoint of the first candle\'s body'),
                        _BulletPoint('The deeper the penetration into the first candle, the stronger the signal'),
                        const SizedBox(height: 24),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.red[50],
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Trading Implications:',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'The Dark Cloud Cover suggests that the uptrend may be losing momentum as sellers take control. The pattern is more reliable when it occurs after a prolonged uptrend and is confirmed by high volume on the second candle.',
                                style: TextStyle(fontSize: 16, height: 1.5),
                              ),
                            ],
                          ),
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

class _BulletPoint extends StatelessWidget {
  final String text;
  const _BulletPoint(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 18, color: Colors.deepPurple)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}