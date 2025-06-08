import 'package:flutter/material.dart';

import 'what_is_forex_page.dart';
import 'currency_pairs_page.dart';
import 'pips_spreads_page.dart';
import 'leverage_margin_page.dart';
import 'long_short_page.dart';
import 'market_hours_page.dart';
import 'fundamental_analysis_page.dart';
import 'technical_analysis_page.dart';
import 'risk_management_page.dart';
import 'trading_psychology_page.dart';

class ForexHistoryPage extends StatelessWidget {
  const ForexHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forex Basics for Beginners'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildConceptCard(
            context: context,
            title: "1. What is Forex Trading?",
            icon: Icons.help_outline,
            color: Colors.blue,
            page: const WhatIsForexPage(),
          ),
          _buildConceptCard(
            context: context,
            title: "2. Understanding Currency Pairs",
            icon: Icons.currency_exchange,
            color: Colors.green,
            page: const CurrencyPairsPage(),
          ),
          _buildConceptCard(
            context: context,
            title: "3. Pips and Spreads",
            icon: Icons.trending_up,
            color: Colors.purple,
            page: const PipsSpreadsPage(),
          ),
          _buildConceptCard(
            context: context,
            title: "4. Leverage and Margin (Risk!)",
            icon: Icons.warning,
            color: Colors.red,  // Red for risk concepts
            page: const LeverageMarginPage(),
          ),
          _buildConceptCard(
            context: context,
            title: "5. Going Long vs. Short",
            icon: Icons.compare_arrows,
            color: Colors.orange,
            page: const LongShortPage(),
          ),
          _buildConceptCard(
            context: context,
            title: "6. Forex Market Hours",
            icon: Icons.access_time,
            color: Colors.teal,
            page: const MarketHoursPage(),
          ),
          _buildConceptCard(
            context: context,
            title: "7. Fundamental Analysis",
            icon: Icons.assessment,
            color: Colors.indigo,
            page: const FundamentalAnalysisPage(),
          ),
          _buildConceptCard(
            context: context,
            title: "8. Technical Analysis",
            icon: Icons.insert_chart,
            color: Colors.blueAccent,
            page: const TechnicalAnalysisPage(),
          ),
          _buildConceptCard(
            context: context,
            title: "9. Risk Management (Critical!)",
            icon: Icons.security,
            color: Colors.red,  // Red for risk concepts
            page: const RiskManagementPage(),
          ),
          _buildConceptCard(
            context: context,
            title: "10. Trading Psychology",
            icon: Icons.psychology,
            color: Colors.deepPurple,
            page: const TradingPsychologyPage(),
          ),
        ],
      ),
    );
  }

  Widget _buildConceptCard({
    required BuildContext context,
    required String title,
    required IconData icon,
    required Color color,
    required Widget page,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        ),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(icon, color: color, size: 32),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}