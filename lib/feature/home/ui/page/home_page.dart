import 'package:flutter/material.dart';
import 'package:ai_buddy/core/extension/context.dart';
import 'package:ai_buddy/feature/user/ui/widget/profile_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final _tabs = <_HomeTab>[
    _HomeTab(
      label: 'Home',
      icon: Icons.home,
      builder: (context) => const Center(child: Text('Home')),
    ),
    _HomeTab(
      label: 'Explore',
      icon: Icons.explore,
      builder: (context) => const Center(child: Text('Explore')),
    ),
    _HomeTab(
      label: 'Profile',
      icon: Icons.person,
      builder: (context) => const ProfileTab(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final Widget body;
    final Widget? bottomNavigationBar;
    final content = _tabs[_selectedIndex].builder(context);

    if (context.isWide) {
      body = Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() => _selectedIndex = index);
            },
            destinations: [
              for (final tab in _tabs)
                NavigationRailDestination(
                  label: Text(tab.label),
                  icon: Icon(tab.icon),
                ),
            ],
          ),
          Expanded(child: content),
        ],
      );
      bottomNavigationBar = null;
    } else {
      body = SafeArea(child: content);
      bottomNavigationBar = BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: [
          for (final tab in _tabs)
            BottomNavigationBarItem(
              label: tab.label,
              icon: Icon(tab.icon),
            ),
        ],
      );
    }

    return Scaffold(
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

class _HomeTab {
  const _HomeTab({
    required this.label,
    required this.icon,
    required this.builder,
  });

  final String label;
  final IconData icon;
  final WidgetBuilder builder;
}
