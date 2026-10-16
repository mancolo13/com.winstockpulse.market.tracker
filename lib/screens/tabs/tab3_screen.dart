import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Earnings Calendar')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _calendarCard('Thursday, Oct 24', 'Tesla (TSLA) • EPS Est: \$0.60'),
          _calendarCard('Tuesday, Oct 29', 'Apple (AAPL) • EPS Est: \$1.54'),
          _calendarCard('Wednesday, Oct 30', 'Microsoft (MSFT) • EPS Est: \$3.10'),
        ],
      ),
    );
  }

  Widget _calendarCard(String date, String details) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(date, style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 13)),
          const SizedBox(height: 6),
          Text(details, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

