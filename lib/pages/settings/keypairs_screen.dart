import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shino/isar/keypair.dart';
import 'package:shino/main.dart';
import 'package:shino/widgets/async_button.dart';
import 'package:shino/widgets/keypair_tile.dart';

enum _PopupMenuAction { copy, delete }

class KeypairsScreen extends StatelessWidget {
  final Function(Keypair)? onKeypairTap;

  const KeypairsScreen({
    Key? key,
    this.onKeypairTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Keypair>>(
      stream: isar.keypairs.buildQuery<Keypair>().watch(initialReturn: true),
      builder: (context, snapshot) {
        final keypairs = snapshot.data ?? [];

        return ListView(
          children: [
            for (final kp in keypairs)
              GestureDetector(
                child: KeypairTile(
                  keypair: kp,
                  onTap: onKeypairTap != null ? () => onKeypairTap!(kp) : null,
                ),
                onLongPressStart: (details) =>
                    _showPopupMenu(details.globalPosition, context, kp),
              ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text("Add keypair"),
              onTap: () => _showAddDialog(context),
            ),
          ],
        );
      },
    );
  }

  void _showPopupMenu(
    Offset offset,
    BuildContext context,
    Keypair keypair,
  ) async {
    final value = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(offset.dx, offset.dy, 0, 0),
      items: [
        PopupMenuItem(
          child: const Text("Copy"),
          value: _PopupMenuAction.copy,
        ),
        PopupMenuItem(
          child: const Text("Delete"),
          value: _PopupMenuAction.delete,
        ),
      ],
    );

    switch (value) {
      case _PopupMenuAction.copy:
        await Clipboard.setData(ClipboardData(text: keypair.publicKeyOpenSSH));

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text("Copied public key to clipboard"),
          ),
        );

        break;
      case _PopupMenuAction.delete:
        _showDeleteDialog(context, keypair);
        break;
      case null:
        break;
    }
  }

  void _showAddDialog(BuildContext context) {
    final nameController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Add keypair"),
          content: TextField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: "Name",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            AsyncButton(
              style: AsyncButtonStyle.text,
              onPressed: () async {
                if (nameController.text.isEmpty) return false;

                await Keypair.generate(nameController.text);
                Navigator.pop(context);

                return true;
              },
              label: "Add",
            ),
          ],
        );
      },
    );
  }

  void _showDeleteDialog(BuildContext context, Keypair keypair) {
    if (keypair.hosts.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Can't delete keypair, it's still in use"),
        ),
      );
      return;
    }

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete keypair"),
          content: Text("Do you really want to delete ${keypair.name}?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () async {
                await keypair.delete();
                Navigator.pop(context);
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }
}
