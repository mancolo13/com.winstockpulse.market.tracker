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
          icon: const Icon(Icons.trending_up_outlined),
          selectedIcon: const Icon(Icons.trending_up, color: AppTheme.primaryColor),
          label: 'Watchlist',
        ),
        NavigationDestination(
          icon: const Icon(Icons.grid_view_outlined),
          selectedIcon: const Icon(Icons.grid_view, color: AppTheme.primaryColor),
          label: 'Heatmap',
        ),
        NavigationDestination(
          icon: const Icon(Icons.attach_money_outlined),
          selectedIcon: const Icon(Icons.attach_money, color: AppTheme.primaryColor),
          label: 'Dividends',
        ),
        NavigationDestination(
          icon: const Icon(Icons.feed_outlined),
          selectedIcon: const Icon(Icons.feed, color: AppTheme.primaryColor),
          label: 'News',
        ),

        ],
      ),
    );
  }
}
