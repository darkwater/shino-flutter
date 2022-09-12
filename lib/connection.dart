import 'dart:convert';
import 'dart:developer';

import 'package:dartssh2/dartssh2.dart';
import 'package:shino/isar/keypair.dart';

class Connection {
  final SSHClient _client;

  Connection._(this._client);

  static Future<Connection> connect({
    required String address,
    required int port,
    required String username,
    String? password,
    Keypair? keypair,
  }) async {
    final client = SSHClient(
      await SSHSocket.connect(address, port),
      username: username,
      onPasswordRequest: () => password,
      onUserauthBanner: (message) => log(message),
      onVerifyHostKey: (type, fingerprint) => true, // TODO
      identities: keypair != null
          ? [
              OpenSSHEd25519KeyPair(
                keypair.publicKey,
                await keypair.privateKey(),
                keypair.name,
              ),
            ]
          : null,
      printDebug: print,
      printTrace: print,
    );

    await client.authenticated;

    return Connection._(client);
  }

  Future<String> execute(String command) async {
    final session = await _client.execute(command);
    await session.stdin.close();

    final out = utf8.decodeStream(session.stdout);
    await session.done;

    return await out;
  }
}
