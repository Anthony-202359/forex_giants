import 'package:flutter/material.dart';

// Import all indicator pages
import 'moving_average_page.dart';
import 'exponential_ma_page.dart';
import 'macd_page.dart';
import 'rsi_page.dart';
import 'ppo_page.dart';
import 'parabolic_sar_page.dart';
import 'adx_page.dart';
import 'stochastic_page.dart';
import 'bollinger_bands_page.dart';
import 'standard_deviation_page.dart';
import 'fibonacci_retracement_page.dart';
import 'aroon_indicator_page.dart';
import 'distribution_line_page.dart';
import 'on_balance_volume_page.dart';
import 'ichimoku_page.dart';

class TechnicalAnalysisPage extends StatelessWidget {
  const TechnicalAnalysisPage({super.key});

  static final List<Map<String, dynamic>> indicators = [
    {
      'title': 'Moving Average Indicator',
      'page': const MovingAveragePage(),
      'icon': Icons.trending_up,
    },
    {
      'title': 'Exponential Moving Average',
      'page': const ExponentialMAPage(),
      'icon': Icons.trending_flat,
    },
    {
      'title': 'Moving Average Convergence',
      'page': const MACDPage(),
      'icon': Icons.show_chart,
    },
    {
      'title': 'Relative Strength Index',
      'page': const RSIPage(),
      'icon': Icons.speed,
    },
    {
      'title': 'Percentage Price Oscillator',
      'page': const PPOPage(),
      'icon': Icons.auto_graph,
    },
    {
      'title': 'Parabolic SAR Indicator',
      'page': const ParabolicSARPage(),
      'icon': Icons.blur_on,
    },
    {
      'title': 'Average Directional Index',
      'page': const ADXPage(),
      'icon': Icons.ssid_chart,
    },
    {
      'title': 'Stochastic Oscillator Index',
      'page': const StochasticPage(),
      'icon': Icons.waves,
    },
    {
      'title': 'Bollinger Bands Indicator',
      'page': const BollingerBandsPage(),
      'icon': Icons.horizontal_rule,
    },
    {
      'title': 'Standard Deviation',
      'page': const StandardDeviationPage(),
      'icon': Icons.calculate, // ✅ replaced invalid icon
    },
    {
      'title': 'Fibonacci Retracement',
      'page': const FibonacciPage(),
      'icon': Icons.functions, // ✅ replaced invalid icon
    },
    {
      'title': 'Aroon Indicator',
      'page': const AroonPage(),
      'icon': Icons.compare_arrows,
    },
    {
      'title': 'Distribution Line',
      'page': const DistributionLinePage(),
      'icon': Icons.bar_chart,
    },
    {
      'title': 'On Balance Volume Indicator',
      'page': const OBVPage(),
      'icon': Icons.insert_chart,
    },
    {
      'title': 'Ichimoku',
      'page': const IchimokuPage(),
      'icon': Icons.cloud,
    },
  ];

  void _navigateTo(BuildContext context, Widget page) {
    try {
      Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error navigating: ${e.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
    }
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
        automaticallyImplyLeading: false,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Text(
              'Technical Analysis',
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
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                itemCount: indicators.length,
                separatorBuilder: (context, index) => const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  return Card(
                    color: const Color(0xFFF3E8FF),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                      side: BorderSide(color: Colors.deepPurple.withOpacity(0.08), width: 1.5),
                    ),
                    shadowColor: Colors.deepPurple.withOpacity(0.10),
                    child: ListTile(
                      leading: Icon(
                        indicators[index]['icon'] as IconData? ?? Icons.help_outline,
                        color: Colors.deepPurple,
                        size: 32,
                      ),
                      title: Text(
                        indicators[index]['title'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.chevron_right,
                        color: Colors.deepPurple,
                        size: 28,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      onTap: () => _navigateTo(
                        context,
                        indicators[index]['page'] as Widget,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
