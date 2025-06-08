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
      appBar: AppBar(
        title: const Text('B. Algo FX Experts'),
        backgroundColor: Colors.red[500],
        elevation: 0,
      ),
      body: _selectedIndex == -1
          ? SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Master Forex Trading with B. Algo FX Experts',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const Text(
                      'Key Forex Concepts',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Image.asset(
                      'assets/images/person.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Why Learn With Us?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Proven trading strategies'),
            ),
            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Risk management techniques'),
            ),
            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Algorithmic trading insights'),
            ),
          ],
        ),
      )
          : _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red[500],
        currentIndex: _selectedIndex == -1 ? 0 : _selectedIndex,
        onTap: _onItemTapped,
        elevation: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme: const IconThemeData(color: Colors.white),
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
}
