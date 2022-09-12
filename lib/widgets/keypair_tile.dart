import 'package:flutter/material.dart';
import 'package:shino/isar/keypair.dart';
import 'package:shino/main.dart';

class KeypairTile extends StatelessWidget {
  final Keypair keypair;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const KeypairTile({
    Key? key,
    required this.keypair,
    this.onTap,
    this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(keypair.name),
      subtitle: Text("used for ${keypair.hosts.length} hosts"),
      trailing: Opacity(
        opacity: 0.5,
        child: Text(
          _splitInTwoLines(
            "..." + keypair.publicKeyOpenSSH.split(" ")[1].substring(35),
          ),
          style: monoTextStyle,
        ),
      ),
      onTap: onTap,
      onLongPress: onLongPress,
    );
  }

  String _splitInTwoLines(String text) {
    final half = text.length ~/ 2;
    return "${text.substring(0, half)}\n${text.substring(half)}";
  }
}
