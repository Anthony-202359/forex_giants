import 'package:flutter/material.dart';

class PipsSpreadsPage extends StatelessWidget {
  const PipsSpreadsPage({super.key});

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
                'Pips and Spreads',
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
                        'Pip:',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'A pip (percentage in point) is the smallest price move a currency pair can make.',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      _buildBulletPoint('For most pairs: 0.0001 (1/100 of 1%)', fontSize: 18),
                      _buildBulletPoint('For JPY pairs: 0.01', fontSize: 18),
                      const SizedBox(height: 24),
                      const Text(
                        'Spread:',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'The difference between the bid (sell) and ask (buy) price.',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      _buildBulletPoint('Measured in pips', fontSize: 18),
                      _buildBulletPoint('Major pairs have tighter spreads', fontSize: 18),
                      _buildBulletPoint('Exotics have wider spreads', isImportant: true, fontSize: 18),
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
                          'Important: The spread is your immediate trading cost.',
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

  Widget _buildBulletPoint(String text, {bool isImportant = false, double fontSize = 16}) {
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
                color: isImportant ? Colors.red : Colors.black87,
                fontWeight: isImportant ? FontWeight.bold : FontWeight.w500,
                fontSize: fontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}