import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shino/isar/remote_host.dart';
import 'package:shino/main.dart';

import 'add_remote_screen.dart';

class RemotesScreen extends StatelessWidget {
  const RemotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<RemoteHost>>(
      stream:
          isar.remoteHosts.buildQuery<RemoteHost>().watch(initialReturn: true),
      builder: (context, snapshot) {
        final hosts = snapshot.data ?? [];

        return ListView(
          children: [
            if (!snapshot.hasData)
              const Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(),
              ),
            for (final host in hosts)
              ListTile(
                title: Text(host.name),
                subtitle: Text("${host.username}@${host.address}:${host.port}"),
                onTap: () async {
                  try {
                    final conn = await host.connect();
                    print(await conn.execute("ls"));
                  } catch (e) {
                    print(e);
                  }
                },
                onLongPress: () => _showDeleteDialog(context, host),
              ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text("Add remote"),
              onTap: () => Navigator.push(context, AddRemoteScreen.route()),
            ),
          ],
        );
      },
    );
  }

  void _showDeleteDialog(BuildContext context, RemoteHost host) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete remote"),
          content: Text("Are you sure you want to delete ${host.name}?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () async {
                await isar.writeTxn((isar) async {
                  await isar.remoteHosts.delete(host.id!);
                });

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
