import 'package:isar/isar.dart';

part 'preferences.g.dart';

@Collection()
class Preferences {
  @Id()
  final int id = 0;

  String defaultUsername = "";
}
