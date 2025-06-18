import 'package:flutter/material.dart';

class RiskManagementPage extends StatelessWidget {
  const RiskManagementPage({super.key});

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
                'Risk Management',
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
                      Text(
                        'Risk management is the MOST IMPORTANT aspect of trading.',
                        style: TextStyle(color: Colors.red[900], fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Essential Rules:',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                      const SizedBox(height: 8),
                      _buildRule('1-2% Rule', 'Never risk more than 1-2% of capital on a single trade'),
                      _buildRule('Stop Losses', 'Always use stop loss orders'),
                      _buildRule('Take Profits', 'Set profit targets before entering'),
                      _buildRule('Risk/Reward', 'Aim for at least 1:2 ratio'),
                      const SizedBox(height: 24),
                      const Text(
                        'Common Mistakes:',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                      const SizedBox(height: 8),
                      _buildBulletPoint('Overtrading (too many positions)', fontSize: 18),
                      _buildBulletPoint('Moving stop losses further away', fontSize: 18),
                      _buildBulletPoint('Revenge trading after losses', fontSize: 18),
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
                          'WARNING: Poor risk management is the #1 reason traders fail.',
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

  Widget _buildRule(String title, String description) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      color: const Color(0xFFF8F8FF),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        child: Row(
          children: [
            Icon(Icons.check_circle, color: Colors.deepPurple, size: 24),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                  Text(description, style: const TextStyle(fontSize: 15)),
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