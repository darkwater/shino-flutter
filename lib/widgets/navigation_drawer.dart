import 'package:flutter/material.dart';
import 'package:shino/pages/dashboard.dart';
import 'package:shino/pages/settings/settings_page.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.dashboard),
          title: const Text("Dashboard"),
          onTap: () => Navigator.push(context, DashboardPage.route()),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("Settings"),
          onTap: () => Navigator.push(context, SettingsPage.route()),
        ),
      ],
    );
  }
}
