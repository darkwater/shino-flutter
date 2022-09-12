import 'dart:io';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'isar/keypair.dart';
import 'isar/preferences.dart';
import 'isar/remote_host.dart';
import 'pages/dashboard.dart';

late final Isar isar;
late final TextStyle monoTextStyle;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationSupportDirectory();
  isar = await Isar.open(
    schemas: [KeypairSchema, RemoteHostSchema, PreferencesSchema],
    directory: dir.path,
  );

  monoTextStyle = TextStyle(
    fontFamily: Platform.isIOS
        ? "Menlo"
        : Platform.isAndroid
            ? "monospace"
            : "Roboto Mono",
    fontFamilyFallback: const ["Hack", "Menlo", "Droid Sans Mono", "monospace"],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shino",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: const ColorScheme.light().copyWith(
          secondary: Colors.lightBlue,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        colorScheme: const ColorScheme.dark().copyWith(
          primary: Colors.blue,
          secondary: Colors.lightBlue,
          surface: Colors.blue.shade900,
        ),
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.grey.shade900,
        ),
        scaffoldBackgroundColor: Colors.grey.shade900,
        navigationBarTheme: const NavigationBarThemeData(
          indicatorColor: Colors.lightBlue,
        ),
      ),
      home: const DashboardPage(),
    );
  }
}
