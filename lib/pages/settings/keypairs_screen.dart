import 'package:flutter/material.dart';
import 'package:shino/hive/keypair.dart';
import 'package:shino/main.dart';

class KeypairsScreen extends StatelessWidget {
  const KeypairsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Keypair>>(
      stream: isar.keypairs.buildQuery<Keypair>().watch(initialReturn: true),
      builder: (context, snapshot) {
        final keypairs = snapshot.data ?? [];

        return ListView(
          children: [
            for (final kp in keypairs)
              ListTile(
                title: Text(kp.publicKey),
              ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text("Add keypair"),
              onTap: () async => await Keypair.generate(),
            ),
          ],
        );
      },
    );
  }
}
