import 'package:flutter/material.dart';
import 'package:shino/widgets/adaptive_scaffold.dart';

import 'keypairs_screen.dart';
import 'preferences_screen.dart';
import 'remotes_screen.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const SettingsPage(),
    );
  }

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _selectedDestination = 0;

  final pages = const [
    RemotesScreen(),
    KeypairsScreen(),
    PreferencesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: pages[_selectedDestination],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedDestination,
        onDestinationSelected: (index) {
          setState(() => _selectedDestination = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dns_outlined),
            selectedIcon: Icon(Icons.dns),
            label: "Remotes",
          ),
          NavigationDestination(
            icon: Icon(Icons.badge_outlined),
            selectedIcon: Icon(Icons.badge),
            label: "Keypairs",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: "Preferences",
          ),
        ],
      ),
    );
  }
}
