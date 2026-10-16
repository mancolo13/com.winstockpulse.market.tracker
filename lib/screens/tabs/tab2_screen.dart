import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      {'t': 'MSFT', 'n': 'Microsoft Corp', 'p': '\$422.50', 'c': '+1.10%'},
      {'t': 'AMZN', 'n': 'Amazon.com Inc', 'p': '\$188.20', 'c': '+2.35%'},
      {'t': 'GOOGL', 'n': 'Alphabet Class A', 'p': '\$165.40', 'c': '+0.80%'},
      {'t': 'AMD', 'n': 'Adv Micro Devices', 'p': '\$156.10', 'c': '+3.40%'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • My Watchlist')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: list.length,
        itemBuilder: (context, i) {
          final item = list[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item['t']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text(item['n']!, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                  ],
                ),
                ElevatedButton(
                  onPressed: () => RoutingService.openRegistrationUrl(),
                  style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryColor, foregroundColor: Colors.black),
                  child: Text(item['c']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

