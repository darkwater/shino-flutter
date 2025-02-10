import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shino/pages/servers.dart';

late final FlutterSecureStorage secureStorage;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  secureStorage = const FlutterSecureStorage();
  runApp(ProviderScope(child: const ShinoApp()));
}

class ShinoApp extends StatelessWidget {
  const ShinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shino",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const ServersPage(),
    );
  }
}
