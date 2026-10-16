import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.show_chart_outlined),
            selectedIcon: const Icon(Icons.show_chart, color: AppTheme.primaryColor),
            label: 'Markets',
          ),
          NavigationDestination(
            icon: const Icon(Icons.bookmark_outline),
            selectedIcon: const Icon(Icons.bookmark, color: AppTheme.primaryColor),
            label: 'Watchlist',
          ),
          NavigationDestination(
            icon: const Icon(Icons.calendar_month_outlined),
            selectedIcon: const Icon(Icons.calendar_month, color: AppTheme.primaryColor),
            label: 'Earnings',
          ),
          NavigationDestination(
            icon: const Icon(Icons.notifications_none_outlined),
            selectedIcon: const Icon(Icons.notifications, color: AppTheme.primaryColor),
            label: 'Alerts',
          ),
        ],
      ),
    );
  }
}
