import 'package:flutter/material.dart';

class MarketHoursPage extends StatelessWidget {
  const MarketHoursPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
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
          padding: const EdgeInsets.fromLTRB(16, 100, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Forex Market Hours',
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
              Card(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Forex Market Sessions:',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                      const SizedBox(height: 16),
                      _buildSessionCard('Sydney', '5PM - 2AM UTC'),
                      _buildSessionCard('Tokyo', '12AM - 9AM UTC'),
                      _buildSessionCard('London', '8AM - 5PM UTC', isMajor: true),
                      _buildSessionCard('New York', '1PM - 10PM UTC', isMajor: true),
                      const SizedBox(height: 24),
                      const Text(
                        'Best Trading Times:',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                      const SizedBox(height: 8),
                      _buildBulletPoint('Highest volatility during London/New York overlap (1PM-5PM UTC)', fontSize: 18),
                      _buildBulletPoint('Lowest liquidity during Asian session', fontSize: 18),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Card(
                color: Colors.red[50],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                  child: Row(
                    children: [
                      const Icon(Icons.warning, color: Colors.red, size: 32),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'Warning: Trading during low liquidity periods can result in wider spreads.',
                          style: TextStyle(
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSessionCard(String name, String hours, {bool isMajor = false}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      color: isMajor ? Colors.red[100] : const Color(0xFFF8F8FF),
      elevation: isMajor ? 6 : 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        child: Row(
          children: [
            Icon(Icons.access_time, color: isMajor ? Colors.red : Colors.deepPurple, size: 28),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isMajor ? Colors.red[900] : Colors.deepPurple,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    hours,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text, {double fontSize = 16}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 18)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: fontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}