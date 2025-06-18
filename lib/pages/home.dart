import 'package:flutter/material.dart';
import 'forex_history.dart';
import 'technical_analysis.dart';
import 'support_resistance.dart';
import 'candlestick_patterns.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = -1;

  static final List<Widget> _pages = [
    ForexHistoryPage(),
    TechnicalAnalysisPage(),
    SupportResistancePage(),
    CandlestickBasicsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('B. Algo FX Experts'),
        backgroundColor: Colors.transparent,
        elevation: 0,
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
        child: _selectedIndex == -1
            ? SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome! 👋',
                      style: TextStyle(
                        fontSize: 36,
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
                    const SizedBox(height: 18),
                    Text(
                      'Master Forex Trading with B. Algo FX Experts',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white70,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 8,
                      margin: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Key Forex Concepts',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/images/person.jpeg',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width * 0.95,
                                height: 200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Why Learn With Us?',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 18),
                    _featureTile('Proven trading strategies'),
                    _featureTile('Risk management techniques'),
                    _featureTile('Algorithmic trading insights'),
                  ],
                ),
              )
            : _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFe96443),
        currentIndex: _selectedIndex == -1 ? 0 : _selectedIndex,
        onTap: _onItemTapped,
        elevation: 8,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme: const IconThemeData(color: Colors.white70),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Forex_background',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: 'Technical Analysis',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent),
            label: 'Support/Resistance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.candlestick_chart),
            label: 'Candlestick Patterns',
          ),
        ],
      ),
    );
  }

  Widget _featureTile(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: const Icon(Icons.check_circle, color: Colors.green, size: 28),
        title: Text(
          text,
          style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 18),
        ),
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        dense: true,
        minLeadingWidth: 0,
        horizontalTitleGap: 8,
      ),
    );
  }
}
