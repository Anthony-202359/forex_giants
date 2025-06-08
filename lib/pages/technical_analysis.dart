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
      appBar: AppBar(
        title: const Text('Technical Analysis'),
        backgroundColor: Colors.red,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF5F5F5),
              Color(0xFFE0E0E0),
            ],
          ),
        ),
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: indicators.length,
          separatorBuilder: (context, index) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(
                  indicators[index]['icon'] as IconData? ?? Icons.help_outline,
                  color: Colors.red,
                ),
                title: Text(
                  indicators[index]['title'],
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
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
    );
  }
}
