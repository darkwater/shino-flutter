import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shino/api/shino.dart';
import 'package:shino/main.dart';

part 'server.g.dart';

class Server {
  final String name;
  final String key;
  final String address;
  final int port;

  Server(this.name, this.key, this.address, this.port);
}

@riverpod
Future<List<Server>> servers(Ref ref) async {
  // keys are names, values are key@host:port
  final entries = await secureStorage.readAll();

  return entries.entries.map((entry) {
    final parts = entry.value.split("@");
    final key = parts[0];
    final address = parts[1].split(":")[0];
    final port = int.parse(parts[1].split(":")[1]);

    return Server(entry.key, key, address, port);
  }).toList();
}

@riverpod
ShinoApi serverApi(Ref ref, Server server) {
  // TODO: use https
  return ShinoApi(Dio(), baseUrl: "http://${server.address}:${server.port}");
}
