import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shino/main.dart';
import 'package:shino/pages/server/home.dart';
import 'package:shino/server.dart';

class ServersPage extends ConsumerWidget {
  const ServersPage({super.key});

  static Route route() =>
      MaterialPageRoute<void>(builder: (_) => const ServersPage());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final servers = ref.watch(serversProvider).valueOrNull ?? [];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shino"),
      ),
      body: ListView(
        children: [
          for (final server in servers)
            ListTile(
              title: Text(server.name),
              subtitle: Text("${server.address}:${server.port}"),
              onTap: () {
                Navigator.push(context, HomePage.route(server));
              },
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddServerSheet();
            },
          );

          ref.invalidate(serversProvider);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class AddServerSheet extends StatefulWidget {
  const AddServerSheet({super.key});

  @override
  State<AddServerSheet> createState() => _AddServerSheetState();
}

class _AddServerSheetState extends State<AddServerSheet> {
  final _nameController = TextEditingController();
  final _keyController = TextEditingController();
  final _addressController = TextEditingController();
  final _portController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        shrinkWrap: true,
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: "Name"),
          ),
          TextField(
            controller: _keyController,
            decoration: const InputDecoration(labelText: "Key"),
          ),
          TextField(
            controller: _addressController,
            decoration: const InputDecoration(labelText: "Address"),
          ),
          TextField(
            controller: _portController,
            decoration: const InputDecoration(labelText: "Port"),
          ),
          ElevatedButton(
            onPressed: () {
              final name = _nameController.text;
              final key = _keyController.text;
              final address = _addressController.text;
              final port = int.parse(_portController.text);

              secureStorage.write(key: name, value: "$key@$address:$port");
              print("Added $name");
              secureStorage.read(key: name).then(print);

              Navigator.of(context).pop();
            },
            child: const Text("Add"),
          ),
        ],
      ),
    );
  }
}
