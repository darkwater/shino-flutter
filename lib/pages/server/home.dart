import 'package:flutter/material.dart';
import 'package:shino_flutter/pages/server/bluetooth.dart';
import 'package:shino_flutter/server.dart';

class HomePage extends StatelessWidget {
  final Server server;

  const HomePage(this.server, {super.key});

  static Route route(Server server) =>
      MaterialPageRoute<void>(builder: (_) => HomePage(server));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(server.name),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.bluetooth),
            title: const Text("Bluetooth"),
            onTap: () {
              Navigator.push(context, BluetoothPage.route(server));
            },
          ),
        ],
      ),
    );
  }
}
