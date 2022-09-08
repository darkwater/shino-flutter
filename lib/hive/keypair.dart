import 'dart:convert';
import 'dart:math';

import 'package:cryptography/cryptography.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:shino/main.dart';

part 'keypair.g.dart';

@Collection()
class Keypair {
  @Id()
  int? id;

  String privateKeyId;
  String publicKey;

  Keypair({
    required this.privateKeyId,
    required this.publicKey,
  });

  static Future<Keypair> generate() async {
    const secureStorage = FlutterSecureStorage();

    final keypair = await Ed25519().newKeyPair();
    final privateKey = await keypair.extractPrivateKeyBytes();
    final publicKey = (await keypair.extractPublicKey()).bytes;

    final privateKeyId = Random().nextInt(1000000000).toString();

    secureStorage.write(key: privateKeyId, value: base64Encode(privateKey));

    final kp = Keypair(
      privateKeyId: privateKeyId,
      publicKey: base64Encode(publicKey),
    );

    await isar.writeTxn((isar) async {
      kp.id = await isar.keypairs.put(kp);
    });

    return kp;
  }

  Future<List<int>> privateKey() async {
    const secureStorage = FlutterSecureStorage();
    final b64 = (await secureStorage.read(key: privateKeyId));
    return base64Decode(b64!);
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
}
