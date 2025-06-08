import 'package:flutter/material.dart';

class OBVPage extends StatelessWidget {
  const OBVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('On Balance Volume'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/volume.jpeg'),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'On Balance Volume (OBV) cumulatively adds volume on up days and subtracts on down days, showing whether '
                    'volume is flowing into or out of a security. Rising OBV (green line) confirms price trends, while '
                    'falling OBV (red) may warn of weak trends. In the chart, notice how OBV broke out before price did, '
                    'providing an early signal. Divergences occur when price and OBV move opposite directions - often '
                    'preceding reversals. OBV works well for confirming breakouts and spotting accumulation/distribution patterns.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}