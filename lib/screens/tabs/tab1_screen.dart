import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • StockPulse'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: AppTheme.primaryColor),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppTheme.primaryColor.withValues(alpha: 0.25), AppTheme.surfaceColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('PORTFOLIO ESTIMATE', style: TextStyle(color: Colors.white60, fontSize: 11, letterSpacing: 1.2)),
                const SizedBox(height: 6),
                const Text('\$48,920.40', style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900)),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.arrow_upward, color: AppTheme.primaryColor, size: 16),
                    const Text('+\$842.10 (+1.75%) TODAY', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text('Market Indices', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(child: _indexCard('S&P 500', '5,864.2', '+0.84%')),
              const SizedBox(width: 12),
              Expanded(child: _indexCard('NASDAQ', '18,340.1', '+1.22%')),
            ],
          ),
          const SizedBox(height: 16),
          const Text('Top Movers', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _stockTile('NVDA', 'NVIDIA Corp', '\$138.25', '+4.12%', true),
          _stockTile('AAPL', 'Apple Inc', '\$231.80', '+0.95%', true),
          _stockTile('TSLA', 'Tesla Inc', '\$218.40', '-1.40%', false),
        ],
      ),
    );
  }

  Widget _indexCard(String name, String price, String change) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: const TextStyle(color: Colors.white70, fontSize: 13, fontWeight: FontWeight.w600)),
          const SizedBox(height: 4),
          Text(price, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          Text(change, style: const TextStyle(color: AppTheme.primaryColor, fontSize: 12, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _stockTile(String ticker, String name, String price, String change, bool pos) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(ticker, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Text(name, style: const TextStyle(color: Colors.white60, fontSize: 12)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(price, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Text(change, style: TextStyle(color: pos ? AppTheme.primaryColor : Colors.redAccent, fontWeight: FontWeight.bold, fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}

