import 'package:flutter/material.dart';

class WhatIsForexPage extends StatefulWidget {
  const WhatIsForexPage({super.key});

  @override
  State<WhatIsForexPage> createState() => _WhatIsForexPageState();
}

class _WhatIsForexPageState extends State<WhatIsForexPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 900),
      vsync: this,
    );
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                'What is Forex Trading?',
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
              FadeTransition(
                opacity: _fadeAnimation,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.withOpacity(0.08),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.public, color: Colors.deepPurple, size: 38),
                          ),
                        ),
                        const SizedBox(height: 18),
                        const Text(
                          'Forex (FX) is the global marketplace for exchanging national currencies.',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'Key Characteristics:',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                        ),
                        const SizedBox(height: 8),
                        _buildBulletPoint('Largest financial market (> \$6 trillion daily volume)', fontSize: 18),
                        _buildBulletPoint('Open 24/5 (closed weekends)', fontSize: 18),
                        _buildBulletPoint('Decentralized (no central exchange)', fontSize: 18),
                        _buildBulletPoint('Traded in currency pairs (e.g., EUR/USD)', fontSize: 18),
                        const SizedBox(height: 24),
                        const Text(
                          'Major Participants:',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                        ),
                        const SizedBox(height: 8),
                        _buildBulletPoint('Banks (70% of volume)', fontSize: 18),
                        _buildBulletPoint('Corporations (import/export needs)', fontSize: 18),
                        _buildBulletPoint('Governments (monetary policy)', fontSize: 18),
                        _buildBulletPoint('Retail traders (<10% of market)', isImportant: true, fontSize: 18),
                      ],
                    ),
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
                          'Warning: Forex trading involves significant risk of loss.',
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