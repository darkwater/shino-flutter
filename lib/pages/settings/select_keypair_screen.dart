import 'package:flutter/material.dart';
import 'package:shino/pages/settings/keypairs_screen.dart';

class SelectKeypairScreen extends StatelessWidget {
  const SelectKeypairScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const SelectKeypairScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select keypair"),
      ),
      body: KeypairsScreen(
        onKeypairTap: (keypair) {
          Navigator.pop(context, keypair);
        },
      ),
    );
  }
}
