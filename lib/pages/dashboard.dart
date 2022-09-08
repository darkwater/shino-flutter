import 'package:flutter/material.dart';
import 'package:shino/widgets/adaptive_scaffold.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const DashboardPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Center(
        child: TextButton(
          child: const Text("Dashboard"),
          onPressed: () => Navigator.push(context, route()),
        ),
      ),
    );
  }
}
