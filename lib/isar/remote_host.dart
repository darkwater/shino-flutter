import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:shino/connection.dart';
import 'package:shino/main.dart';

import 'keypair.dart';

part 'remote_host.g.dart';

@Collection()
class RemoteHost {
  @Id()
  int? id;

  String name;
  String address;
  int port;
  String username;
  String password;
  String? hostKey;
  String command;

  final keypair = IsarLink<Keypair>();

  RemoteHost({
    required this.name,
    required this.address,
    required this.port,
    required this.username,
    required this.command,
    this.password = "",
    this.hostKey,
  });

  Future<Connection> connect() async {
    if (id != null) await keypair.load();

    return await Connection.connect(
      address: address,
      port: port,
      username: username,
      password: password,
      keypair: keypair.value,
    );
  }

  Future<void> save() async {
    print("ATTACHED: ${keypair.isAttached}");
    await isar.writeTxn((isar) async {
      await isar.remoteHosts.put(this);
    });
  }
}
