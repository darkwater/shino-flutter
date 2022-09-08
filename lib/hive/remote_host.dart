import 'package:isar/isar.dart';

part 'remote_host.g.dart';

@Collection()
class RemoteHost {
  @Id()
  int? id;

  String name;
  String address;
  int port;
  String username;
  String? password;
  String? publicKey;

  RemoteHost({
    required this.name,
    required this.address,
    required this.port,
    required this.username,
    this.password,
    this.publicKey,
  });
}
