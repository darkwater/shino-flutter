import 'dart:convert';
import 'dart:developer';
import 'dart:math' hide log;

import 'package:flutter/foundation.dart';
import 'package:pinenacl/ed25519.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:shino/main.dart';

import 'remote_host.dart';

part 'keypair.g.dart';

@Collection()
class Keypair {
  @Id()
  int? id;

  String name;
  String privateKeyId;
  Uint8List publicKey;

  @Backlink(to: "keypair")
  final hosts = IsarLinks<RemoteHost>();

  Keypair({
    required this.name,
    required this.privateKeyId,
    required this.publicKey,
  });

  String get publicKeyBase64 => base64Encode(publicKey);

  String get publicKeyOpenSSH {
    const type = "ssh-ed25519";
    final data = ByteData(4 + type.length + 4 + publicKey.length);
    data.setUint32(0, type.length);
    data.buffer.asUint8List().setAll(4, type.codeUnits);
    data.setUint32(4 + type.length, publicKey.length);
    data.buffer.asUint8List().setAll(4 + type.length + 4, publicKey);

    final b64 = base64Encode(data.buffer.asUint8List());

    return "$type $b64 $name";
  }

  static Future<Keypair> generate(String name) async {
    final keypair = SigningKey.generate();
    final privateKey = keypair.keyBytes;
    final publicKey = keypair.publicKey;

    String privateKeyId;
    while (true) {
      privateKeyId = Random().nextInt(1000000000).toString();

      if (await FlutterSecureStorage().containsKey(key: privateKeyId)) {
        continue;
      }

      FlutterSecureStorage().write(
        key: privateKeyId,
        value: base64Encode(privateKey),
      );

      break;
    }

    final kp = Keypair(
      name: name,
      privateKeyId: privateKeyId,
      publicKey: Uint8List.fromList(publicKey),
    );

    await isar.writeTxn((isar) async {
      kp.id = await isar.keypairs.put(kp);
    });

    return kp;
  }

  Future<Uint8List> privateKey() async {
    final b64 = (await FlutterSecureStorage().read(key: privateKeyId));
    final bytes = Uint8List(64);

    bytes.setAll(0, base64Decode(b64!));
    bytes.setAll(32, publicKey);

    return bytes;
  }

  Future<String> pem() async {
    final s = StringBuffer();
    s.writeln("-----BEGIN PRIVATE KEY-----");

    final lines = base64Encode(await privateKey());
    for (var i = 0; i < lines.length; i += 64) {
      s.writeln(lines.substring(i, min(i + 64, lines.length)));
    }

    s.writeln("-----END PRIVATE KEY-----");
    return s.toString();
  }

  Future<void> delete() async {
    await FlutterSecureStorage().delete(key: privateKeyId);
    await isar.writeTxn((isar) async {
      await isar.keypairs.delete(id!);
    });
  }
}
