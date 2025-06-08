import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Added forex trading image
            Image.asset(
              'assets/images/forex.jpeg',
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 30),
            Text(  // Removed const here
              'B. Algo FX Experts',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.red[900], // Now works in non-const context
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Master Forex trading with our expert strategies. '
                  'From basics to advanced techniques - all in one place.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[500],
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () => Navigator.pushNamed(context, '/signup'),
                child: const Text(
                  'Get Started for free',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}